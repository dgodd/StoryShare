class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :story

  validates :user, :story, :body, presence: true
end
