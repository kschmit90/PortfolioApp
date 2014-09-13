class Project < ActiveRecord::Base
  attr_accessible :description, :featured, :github, :name, :other_url, :summary
  validates :description, :featured, :github, :name, :summary, presence: true
  validates :name, :github, uniqueness: true
end
