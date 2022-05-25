
widget 'demo_jobsByOutcome_widget', {
  description = ''
  attributeDataType = [
    'total': 'NUMBER',
    'yAxis': 'NUMBER',
    'xAxis': 'STRING',
  ]
  attributePath = [
    'total': 'total',
    'yAxis': 'combinedStatus_count',
    'xAxis': 'combinedStatus',
  ]
  color = [
    'Warning': '#ffbb00',
    'Skipped': '#007bff',
    'Error': '#ff0000',
    'Aborted': '#bababa',
    'Success': '#00ff04',
  ]
  dashboardName = 'Demo Job Metrics Dashboard'
  orderIndex = '2'
  projectName = 'SKO-UseCases'
  reportName = 'demo_jobs_by_outcome'
  reportProjectName = 'SKO-UseCases'
  title = 'Job By Outcome'
  visualization = 'DONUT_CHART'
}
