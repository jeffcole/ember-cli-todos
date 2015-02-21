`import Ember from "ember";`

EditTodo = Ember.TextField.extend
  didInsertElement: ->
    @$().focus()

`export default EditTodo;`
