`import Ember from "ember";`

TodosController = Ember.ArrayController.extend
  actions:
    createTodo: ->
      # Get the todo title set by the "New Todo" text field
      title = @get "newTitle"
      return unless title.trim()

      # Create the new Todo model
      todo = @store.createRecord "todo", title: title, isCompleted: false

      # Clear the "New Todo" text field
      @set "newTitle", ""

      # Save the new model
      todo.save()

`export default TodosController`
