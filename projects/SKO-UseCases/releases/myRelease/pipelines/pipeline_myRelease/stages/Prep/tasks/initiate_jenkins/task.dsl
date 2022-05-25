
task 'initiate_jenkins', {
  description = ''
  actualParameter = [
    'config_name': '/projects/SKO-UseCases/pluginConfigurations/mainControllerConfig',
    'jenkins_enable_parallel_mode': '0',
    'job_name': 'springBootMulti/master',
    'need_to_run_report': '1',
    'parameters': '',
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
  stageSummaryParameters = '[{"name":"jenkinsbuildnumber","label":"jenkinsbuildnumber"},{"name":"jenkinsjoburl","label":"jenkinsjoburl"},{"name":"jenkinsbuildurl","label":"jenkinsbuildurl"}]'
  subpluginKey = 'EC-Jenkins'
  subprocedure = 'RunAndMonitorBuild'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
