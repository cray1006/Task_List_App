class Task < ActiveRecord::Base
  belongs_to :task_list
  
  validates :Title, presence: true
  validates :Priority, presence: true
  validates :DueDate, presence: true
  validates :task_list_id, presence: true
end
