class User < ActiveRecord::Base
  has_many :tasks
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :password, presence: true
  
end
