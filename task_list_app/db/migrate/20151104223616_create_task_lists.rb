class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists do |t|
      t.string :Name
      t.text :Description

      t.timestamps null: false
    end
  end
end
