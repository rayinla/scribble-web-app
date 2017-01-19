class Subject < ActiveRecord::Base
  has_many :questions, inverse_of: :subject
  belongs_to :user
end
