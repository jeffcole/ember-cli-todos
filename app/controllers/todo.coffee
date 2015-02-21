`import Ember from "ember";`

TodoController = Ember.ObjectController.extend
  actions:
    editTodo: ->
      @set "isEditing", true

    acceptChanges: ->
      @set "isEditing", false

      if Ember.isEmpty(@get("model.title"))
        @send("removeTodo")
      else
        @get("model").save()

    removeTodo: ->
      todo = @get("model")
      todo.deleteRecord()
      todo.save()

  isEditing: false

  isCompleted: ((key, value) ->
    model = @get "model"

    unless value?
      # property being used as a getter
      model.get "isCompleted"
    else
      # property being used a a setter
      model.set "isCompleted", value
      model.save()
      value
  ).property("model.isCompleted")

`export default TodoController;`
