use strict;
use warnings;

sub main
{
    my $jenkinsJobName = "$[/myStageRuntime/tasks/initiate_jenkins/job/jobName]";
    my $sonarProjectVersion;
    my $sonarProjectKey;
    my $sonarProjectName;
    my $nexusGroup;
    my $nexusArtifact;
    my $nexusVersion;
    my $isSnapshot = 0;

	print "../$jenkinsJobName/\n";
	# find the file log name
	opendir(DIR, "../$jenkinsJobName/");
	my @files = grep(/Monitor.*\.log$/,readdir(DIR));
	closedir(DIR);

	# check that we have one file
	my $fileCount = scalar @files;

	if($fileCount != 1) {
	 	die "There were $fileCount log files found\n";
	}

    my $jenkinsLogFile = "../$jenkinsJobName/$files[0]";

    open(FH, $jenkinsLogFile) or die("File $jenkinsLogFile not found");

    while(my $String = <FH>)
    {

        # From line: Uploaded: http://nexus.core-devops.com/repository/maven-releases/com/example/spring-boot/1.0.0/spring-boot-1.0.0.jar
        # 1.0.0 or 1.0.0-SNAPSHOT as $1
        if($String =~ /Uploaded.*:\s+http:\/\/.*(\d+\.\d+\.\d+(\-SNAPSHOT)?)\/([a-z\-]+)(-\d+\.\d+\.\d+)(-\d+\.\d+-\d+)?\.jar/)
        {
            $sonarProjectVersion = "$1";
            $nexusVersion = "$1";

            if (length $2 > 0 && $2 eq '-SNAPSHOT') {
                $isSnapshot = 1;
            }
        }

        # From line: [INFO] Project key: com.example:my-project
        # com.example:my-project as $1
        # com.example as $2
        # my-project as $3
        if($String =~ /\[INFO\]\s+Project\s+key:\s+(([a-z\-\d\.]+):([a-z\-\d]+))/)
        {
            $sonarProjectKey = "$1";
            $sonarProjectName = "$3";

            $nexusGroup = "$2";
            $nexusArtifact = "$3";
        }

    }
    close(FH);

    print "sonar project version: " . $sonarProjectVersion . "\n";
    print "sonar project key: " . $sonarProjectKey . "\n";
    print "sonar project name: " . $sonarProjectName . "\n";

    print "nexus group: " . $nexusGroup . "\n";
    print "nexus artifact: " . $nexusArtifact . "\n";
    print "nexus version: " . $nexusVersion . "\n";
    print "snapshot flag: " . $isSnapshot . "\n";

	use ElectricCommander;
	my $ec = ElectricCommander->new();

    $ec->createProperty({
        propertyName => "/myPipelineRuntime/sonarProjectVersion",
        value => $sonarProjectVersion
    });
    $ec->createProperty({
        propertyName => "/myPipelineRuntime/sonarProjectKey",
        value => $sonarProjectKey
    });
    $ec->createProperty({
        propertyName => "/myPipelineRuntime/sonarProjectName",
        value => $sonarProjectName
    });
    $ec->createProperty({
        propertyName => "/myPipelineRuntime/nexusGroup",
        value => $nexusGroup
    });
    $ec->createProperty({
        propertyName => "/myPipelineRuntime/nexusArtifact",
        value => $nexusArtifact
    });
    $ec->createProperty({
        propertyName => "/myPipelineRuntime/nexusVersion",
        value => $nexusVersion
    });
    $ec->createProperty({
        propertyName => "/myPipelineRuntime/isSnapshot",
        value => $isSnapshot
    });
}
main();