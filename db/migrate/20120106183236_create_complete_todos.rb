class CreateCompleteTodos < ActiveRecord::Migration
  def change
    create_table :complete_todos do |t|
      t.text :content
      t.integer :order
      t.boolean :done
      t.integer :user_id

      t.timestamps
    end
  end
end
