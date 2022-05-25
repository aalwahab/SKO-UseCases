import java.io.File


task 'parseJenkinsOutput', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/myRelease/pipelines/pipeline_myRelease/stages/Prep/tasks/parseJenkinsOutput.pl").text,
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
