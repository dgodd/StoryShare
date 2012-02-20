class Assignment < ActiveRecord::Base
  belongs_to :user
  has_many :stories

  validates :user, :title, :due_at, :body, presence: true

  default_scope order: 'created_at DESC'
end
