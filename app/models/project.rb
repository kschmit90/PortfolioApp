class Project < ActiveRecord::Base
  attr_accessible :description, :featured, :github, :name, :other_url, :summary
end
