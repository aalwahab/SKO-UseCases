
report 'demo_average_job_duration', {
  description = ''
  projectName = 'SKO-UseCases'
  reportObjectTypeName = 'job'
  reportQuery = '{"searchCriteria":[{"criterion":"MUST","conditions":[{"field":"jobStart","operator":"EXISTS"}]}],"groupBy":[{"field":"jobStart","name":"jobStartDate"}],"aggregationFunctions":[{"field":"elapsedTime","function":"AVERAGE"}]}'
}
