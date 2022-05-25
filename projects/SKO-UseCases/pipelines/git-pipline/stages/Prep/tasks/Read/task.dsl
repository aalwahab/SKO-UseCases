import java.io.File


task 'Read', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/git-pipline/stages/Prep/tasks/Read.pl").text,
    'shellToUse': 'ec-perl',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'SKO-UseCases'
  resourceName = ''
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
