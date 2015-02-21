`import Ember from "ember";`

TodosIndexRoute = Ember.Route.extend
  model: ->
    @modelFor "todos"

`export default TodosIndexRoute;`
