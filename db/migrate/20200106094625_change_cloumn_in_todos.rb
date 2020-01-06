class ChangeCloumnInTodos < ActiveRecord::Migration[6.0]
  def change
  	change_column :todos, :title, :string, null: false, unique: true
  	change_column :todos, :description, :string, null: false
  end
end
