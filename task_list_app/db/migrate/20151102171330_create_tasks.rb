class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :Title
      t.string :Description
      t.integer :Priority
      t.date :DueDate
      t.boolean :isCompletedToggle

      t.timestamps null: false
    end
  end
end
