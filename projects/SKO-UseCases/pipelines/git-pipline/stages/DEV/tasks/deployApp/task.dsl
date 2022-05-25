
task 'deployApp', {
  description = ''
  actualParameter = [
    'ec_enforceDependencies': '1',
    'ec_smartDeployOption': '1',
    'ec_stageArtifacts': '1',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  environmentName = 'DEV_ENV_F_Bound_AGEN'
  environmentProjectName = 'SKO-UseCases'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'SKO-UseCases'
  resourceName = ''
  rollingDeployEnabled = '0'
  skippable = '0'
  subapplication = 'GitApp'
  subprocess = 'mainAppProcess'
  subproject = 'SKO-UseCases'
  taskProcessType = 'APPLICATION'
  taskType = 'PROCESS'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
