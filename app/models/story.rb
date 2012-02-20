class Story < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  belongs_to :assignment

  validates :user, :title, :body, presence: true

  default_scope order: 'created_at DESC'
end
