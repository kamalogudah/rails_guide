class AddAuthorIdToTodoTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_todos, :author_id, :integer
  end
end
