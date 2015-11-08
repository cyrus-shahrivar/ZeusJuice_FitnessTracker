class Member < ActiveRecord::Base
  has_many :tweets
  has_many :journals
  has_secure_password
end
