
trigger 'Dashboard_PR_Trigger', {
  accessTokenPublicId = 'ickgazys8ii9aqlmnj6ic3qjghvmkv'
  enabled = '1'
  insertRollingDeployManualStep = '0'
  pluginKey = 'EC-Github'
  pluginParameter = [
    'commitStatusEvent': 'false',
    'includeBranches': '',
    'includeCommitStatuses': 'success',
    'includePrActions': 'opened, closed_merged, closed_discarded, reopened',
    'prEvent': 'true',
    'pushEvent': 'false',
    'repositories': 'aalwahab/Spoon-Knife',
  ]
  procedureName = 'Github_Webhook'
  projectName = 'SKO-UseCases'
  quietTimeMinutes = '0'
  runDuplicates = '0'
  serviceAccountName = 'GitHubSA'
  triggerType = 'webhook'
  webhookName = 'default'
}
