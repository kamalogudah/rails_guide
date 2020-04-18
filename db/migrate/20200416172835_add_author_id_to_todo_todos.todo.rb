# This migration comes from todo (originally 20200416172641)
class AddAuthorIdToTodoTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_todos, :author_id, :integer
  end
end
