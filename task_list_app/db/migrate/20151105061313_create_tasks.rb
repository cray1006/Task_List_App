class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :Title
      t.text :Description
      t.integer :Priority
      t.date :DueDate
      t.boolean :IsCompleted
      
      t.references :task_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
