class TaskList < ActiveRecord::Base
  has_many :tasks
  
  validates :Name, presence: true, uniqueness: true
  validates :Description, presence: true
end
