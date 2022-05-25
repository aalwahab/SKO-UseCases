
report 'GithubDT_PR', {
  description = ''
  definition = '''{
  "size": 0,
  "query": {
    "bool": {
      "filter": [
        {
          "bool": {
            "must": [
              {
                "term": {
                  "actionType": {
                    "value": "opened",
                    "boost": 1
                  }
                }
              }
            ],
            "adjust_pure_negative": true,
            "boost": 1
          }
        }
      ],
      "adjust_pure_negative": true,
      "boost": 1
    }
  },
  "aggregations": {
    "repoName": {
      "terms": {
        "field": "repoName",
        "size": 10,
        "shard_size": 10,
        "min_doc_count": 1,
        "shard_min_doc_count": 0,
        "show_term_doc_count_error": false,
        "order": [
          {
            "_count": "desc"
          },
          {
            "_key": "asc"
          }
        ]
      },
      "aggregations": {
        "Daytime PR Category": {
          "terms": {
            "script": "(doc[\'createdTime\'].value.toInstant().getDayOfWeek().toString() == \'MONDAY\' && (doc[\'createdTime\'].value.toInstant().getHour() >= 8 && doc[\'createdTime\'].value.toInstant().getHour() < 17) ? \'Daytime Hours\' : (doc[\'createdTime\'].value.toInstant().getDayOfWeek().toString() == \'TUESDAY\' && (doc[\'createdTime\'].value.toInstant().getHour() >= 8 && doc[\'createdTime\'].value.toInstant().getHour() < 17) ? \'Daytime Hours\' : (doc[\'createdTime\'].value.toInstant().getDayOfWeek().toString() == \'WEDNESDAY\' && (doc[\'createdTime\'].value.toInstant().getHour() >= 8 && doc[\'createdTime\'].value.toInstant().getHour() < 17) ? \'Daytime Hours\' : (doc[\'createdTime\'].value.toInstant().getDayOfWeek().toString() == \'THURSDAY\' && (doc[\'createdTime\'].value.toInstant().getHour() >= 8 && doc[\'createdTime\'].value.toInstant().getHour() < 17) ? \'Daytime Hours\' : (doc[\'createdTime\'].value.toInstant().getDayOfWeek().toString() == \'FRIDAY\' && (doc[\'createdTime\'].value.toInstant().getHour() >= 8 && doc[\'createdTime\'].value.toInstant().getHour() < 17) ? \'Daytime Hours\' : \'Outside Daytime Hours\')))))",
            "order": {
              "_key": "asc"
            }
          }
        }
      }
    }
  }
}'''
  projectName = 'SKO-UseCases'
  reportObjectTypeName = 'github_pr_report'
}
