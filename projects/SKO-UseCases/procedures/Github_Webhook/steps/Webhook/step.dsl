import java.io.File


step 'Webhook', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Github_Webhook/steps/Webhook.groovy").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'SKO-UseCases'
  releaseMode = 'none'
  resourceName = ''
  shell = 'ec-groovy'
  subprocedure = ''
  subproject = ''
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''
}
