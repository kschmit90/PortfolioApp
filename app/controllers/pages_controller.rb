class PagesController < ApplicationController
  skip_before_filter :authorize
  
  def home
    @projects = Project.all
  end
end
