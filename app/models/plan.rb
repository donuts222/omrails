class Plan < ActiveRecord::Base
  attr_accessible :headline

  belongs_to :user
  validates :user_id, presence: true
end
