
report 'demo_jobs_by_outcome', {
  description = ''
  projectName = 'SKO-UseCases'
  reportObjectTypeName = 'job'
  reportQuery = '{"searchCriteria":[{"criterion":"MUST","conditions":[]}],"groupBy":[{"field":"combinedStatus"}],"aggregationFunctions":[]}'
}
