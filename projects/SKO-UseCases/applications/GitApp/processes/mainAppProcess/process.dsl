
process 'mainAppProcess', {
  applicationName = 'GitApp'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'SKO-UseCases'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_NexusArtifact-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_NexusArtifact-version', defaultValue: '$[/projects/SKO-UseCases/applications/GitApp/components/NexusArtifact/ec_content_details/version]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_smartDeployOption', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_stageArtifacts', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  processStep 'Deploy', {
    alwaysRun = '0'
    applicationTierName = 'App'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'SKO-UseCases'
    subcomponent = 'NexusArtifact'
    subcomponentApplicationName = 'GitApp'
    subcomponentProcess = 'Retrieve'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
