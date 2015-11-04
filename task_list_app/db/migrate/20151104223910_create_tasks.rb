class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :Title
      t.text :Description
      t.integer :Priority
      t.date :Due_Date
      t.boolean :Is_Completed_Toggle

      t.timestamps null: false
    end
  end
end
