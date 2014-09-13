class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone, :subject, :website
  validates :email, :message, :name, :subject, presence: true
  validates :email, uniqueness: true
end
