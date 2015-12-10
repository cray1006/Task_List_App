class Task < ActiveRecord::Base
  belongs_to :task_list
  belongs_to :user
  
  validates :Title, presence: true
  validates :Priority, presence: true, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 10}
  validates :DueDate, presence: true
  validates :task_list_id, presence: true
  validates :user_id, presence: true
end
