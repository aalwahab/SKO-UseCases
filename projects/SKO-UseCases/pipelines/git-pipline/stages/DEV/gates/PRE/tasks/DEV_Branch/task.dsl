
task 'DEV_Branch', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'continueOnError'
  gateCondition = '$[/javascript  myPipelineRuntime.Branch == "DEV"]'
  gateType = 'PRE'
  insertRollingDeployManualStep = '0'
  projectName = 'SKO-UseCases'
  resourceName = ''
  skippable = '0'
  subproject = 'SKO-UseCases'
  taskType = 'CONDITIONAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
