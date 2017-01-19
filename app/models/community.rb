class Community < ActiveRecord::Base
  has_many :groups, inverse_of: :community
end
