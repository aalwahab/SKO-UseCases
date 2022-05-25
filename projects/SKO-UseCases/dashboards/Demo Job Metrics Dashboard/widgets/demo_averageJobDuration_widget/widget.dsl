
widget 'demo_averageJobDuration_widget', {
  description = ''
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'DATE',
  ]
  attributePath = [
    'yAxis': 'average_elapsedTime',
    'xAxis': 'jobStartDate_label',
  ]
  dashboardName = 'Demo Job Metrics Dashboard'
  orderIndex = '6'
  projectName = 'SKO-UseCases'
  reportName = 'demo_average_job_duration'
  reportProjectName = 'SKO-UseCases'
  title = 'Average Job Duration'
  visualization = 'LINE_CHART'
}
