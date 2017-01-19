class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question, inverse_of: :answers
  belongs_to :user, inverse_of: :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :content, presence: true
end
