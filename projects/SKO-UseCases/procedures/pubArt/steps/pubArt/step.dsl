
step 'pubArt', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  parallel = '0'
  precondition = ''
  projectName = 'SKO-UseCases'
  releaseMode = 'none'
  resourceName = ''
  subprocedure = 'Publish'
  subproject = '/plugins/EC-Artifact/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workspaceName = ''
  actualParameter 'artifactName', 'gitGroup:myText'
  actualParameter 'artifactVersionVersion', '1.0.0'
  actualParameter 'compress', '1'
  actualParameter 'followSymlinks', '1'
  actualParameter 'repositoryName', 'default'
}
