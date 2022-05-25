
task 'getJenkinsJobLog', {
  description = ''
  actualParameter = [
    'build_number': '',
    'config_name': '/projects/SKO-UseCases/pluginConfigurations/mainControllerConfig',
    'job_name': '$[/myPipelineRuntime/Branch]',
    'last_n_log_lines': '',
    'result_outpp': '',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'SKO-UseCases'
  resourceName = ''
  skippable = '0'
  subpluginKey = 'EC-Jenkins'
  subprocedure = 'GetBuildLog'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
