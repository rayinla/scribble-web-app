class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :user, inverse_of: :comments
  validates :content, presence: true
end
