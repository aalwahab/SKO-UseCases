
pipeline 'pipeline_myRelease', {
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'SKO-UseCases'
  releaseName = 'myRelease'
  skipStageMode = 'ENABLED'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
