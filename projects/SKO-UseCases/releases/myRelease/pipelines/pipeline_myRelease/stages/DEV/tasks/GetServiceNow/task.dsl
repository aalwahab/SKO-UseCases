
task 'GetServiceNow', {
  description = ''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  allowSkip = '0'
  alwaysRun = '0'
  disableFailure = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  notificationEnabled = '1'
  notificationTemplate = 'ec_default_pipeline_manual_task_notification_template'
  projectName = 'SKO-UseCases'
  resourceName = ''
  skippable = '0'
  subproject = 'SKO-UseCases'
  taskType = 'MANUAL'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
  approver = [
    'SDAAdmins',
  ]

  formalParameter 'ServiceNowTicket', {
    expansionDeferred = '0'
    label = 'Service Now Ticket Num.'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }
}
