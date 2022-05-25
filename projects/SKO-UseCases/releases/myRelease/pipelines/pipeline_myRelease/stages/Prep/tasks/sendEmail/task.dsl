
task 'sendEmail', {
  description = ''
  actualParameter = [
    'html': '',
    'htmlFile': '',
    'raw': '',
    'rawFile': '',
    'subject': 'Snapshot Detected',
    'text': 'Snapshot Detected',
    'textFile': '',
    'toList': 'aalwahab@cloudbees.com',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  condition = '$[/javascript myPipelineRuntime.isSnapshot == 0]'
  enabled = '1'
  errorHandling = 'continueOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'SKO-UseCases'
  resourceName = ''
  skippable = '0'
  subpluginKey = 'EC-SendEmail'
  subprocedure = 'Send Email'
  taskType = 'PLUGIN'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
