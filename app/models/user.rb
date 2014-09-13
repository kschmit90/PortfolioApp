class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  validates :email, :password, :password_confirmation, presence: true
  validates :email, uniqueness: true
  has_secure_password
end
