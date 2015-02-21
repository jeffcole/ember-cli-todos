`import DS from "ember-data";`

# Use this adapter to get todos from http-mocks
# ApplicationAdapter = DS.RESTAdapter.extend
#   namespace: "api"

ApplicationAdapter = DS.LSAdapter.extend
  namespace: "ember-cli-todos"

`export default ApplicationAdapter;`
