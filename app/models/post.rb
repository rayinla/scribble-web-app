class Post < ActiveRecord::Base
  belongs_to :user, inverse_of: :posts
  validates :content, presence: true
end
