
widget 'demo_dailyJobs_widget', {
  description = ''
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'DATE',
    'stacks': 'STRING',
  ]
  attributePath = [
    'yAxis': 'combinedStatus_count',
    'xAxis': 'jobStartDate_label',
    'stacks': 'combinedStatus',
  ]
  color = [
    'Warning': '#ffbb00',
    'Skipped': '#007bff',
    'Error': '#ff0000',
    'Aborted': '#b5b5b0',
    'Success': '#11ff00',
  ]
  dashboardName = 'Demo Job Metrics Dashboard'
  orderIndex = '4'
  projectName = 'SKO-UseCases'
  reportName = 'demo_daily_jobs'
  reportProjectName = 'SKO-UseCases'
  title = 'Daily Jobs'
  visualization = 'STACKED_VERTICAL_BAR_CHART'
}
