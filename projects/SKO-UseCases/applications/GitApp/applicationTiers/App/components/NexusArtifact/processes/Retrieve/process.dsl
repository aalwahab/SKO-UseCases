
process 'Retrieve', {
  processType = 'DEPLOY'
  projectName = 'SKO-UseCases'
  smartUndeployEnabled = '0'
  timeLimitUnits = 'minutes'

  processStep 'Retrieve', {
    actualParameter = [
      'artifactId': '$[/myComponent/ec_content_details/artifactId]',
      'classifier': '$[/myComponent/ec_content_details/classifier]',
      'config': '$[/myComponent/ec_content_details/config]',
      'destination': '$[/myComponent/ec_content_details/destination]',
      'extension': '$[/myComponent/ec_content_details/extension]',
      'groupId': '$[/myComponent/ec_content_details/groupId]',
      'latestVersion': '$[/myComponent/ec_content_details/latestVersion]',
      'overwrite': '$[/myComponent/ec_content_details/overwrite]',
      'repository': '$[/myComponent/ec_content_details/repository]',
      'repoType': '$[/myComponent/ec_content_details/repoType]',
      'resultPropertySheet': '$[/myComponent/ec_content_details/resultPropertySheet]',
      'version': '$[/myJob/ec_NexusArtifact-version]',
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'component'
    projectName = 'SKO-UseCases'
    subprocedure = 'Retrieve Artifact from Nexus'
    subproject = '/plugins/EC-Nexus/project'
    useUtilityResource = '0'
  }
}
