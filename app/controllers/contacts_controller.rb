class ContactsController < ApplicationController
  skip_before_filter :authorize, :only => [:new]
  
  def index
  end
  
  def new
  end
  
  def create
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
end
