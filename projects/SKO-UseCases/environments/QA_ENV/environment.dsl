
environment 'QA_ENV', {
  environmentEnabled = '1'
  projectName = 'SKO-UseCases'
  reservationRequired = '0'

  environmentTier 'Tier 1', {
    resourceName = [
      'qa-agent',
    ]
  }
}
