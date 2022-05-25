use strict;
use warnings;

sub main
{

    my $jenkinsJobId = "$[/myStageRuntime/tasks/getJenkinsJobLog/job/jobId]";
    my $jenkinsJobName = "$[/myStageRuntime/tasks/getJenkinsJobLog/job/jobName]";
    my $sonarProjectVersion;
    my $sonarProjectKey;
    my $sonarProjectName;
    my $nexusGroup;
    my $nexusArtifact;
    my $nexusVersion;

	print "../$jenkinsJobName/\n";
	# find the file log name
	opendir(DIR, "../$jenkinsJobName/");
	my @files = grep(/GetBuildLog.*\.log$/,readdir(DIR));
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
        if($String =~ /Uploaded to maven-snapshots:\s+http:\/\/.*(\d+\.\d+\.\d+(\-SNAPSHOT)?)\/([a-z\-]+)(-\d+\.\d+\.\d+)(-\d+\.\d+-\d+)?\.jar/)
        {
            $sonarProjectVersion = "$1";
            $nexusVersion = "$1";
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


    print "Sonar project version" . $sonarProjectVersion . "\n";
    print "Sonar project key" . $sonarProjectKey . "\n";
    print "Sonar project Name" . $sonarProjectName . "\n";

    print "Nexus Group " . $nexusGroup . "\n";
    print "Nexus Artifact " . $nexusArtifact . "\n";
    print "Nexus Version " . $nexusVersion . "\n";

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
}
main();