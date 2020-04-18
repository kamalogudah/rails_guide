class CreateTodoTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_todos do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
