class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user, inverse_of: :questions
  belongs_to :subject, inverse_of: :questions
  has_many :answers, inverse_of: :question
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :title, :content, presence: true
end
