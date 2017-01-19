class User < ActiveRecord::Base
  has_many :comments, inverse_of: :user
  has_many :answers, inverse_of: :user
  has_many :questions, inverse_of: :user
  has_many :votes, inverse_of: :user
  has_many :posts, inverse_of: :user
  has_many :follows, class_name: 'User', order: :created_at
  has_many :followers, class_name: 'User', order: :created_at
  has_and_belongs_to_many :groups

  validates :username,:password,:email, presence: true
  validates :password, length: {minimum: 6}
  has_secure_password
end
