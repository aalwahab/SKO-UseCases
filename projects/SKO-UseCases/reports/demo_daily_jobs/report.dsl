
report 'demo_daily_jobs', {
  description = ''
  projectName = 'SKO-UseCases'
  reportObjectTypeName = 'job'
  reportQuery = '{"searchCriteria":[{"criterion":"MUST","conditions":[]}],"groupBy":[{"field":"jobStart","name":"jobStartDate"},{"field":"combinedStatus"}],"aggregationFunctions":[]}'
}
