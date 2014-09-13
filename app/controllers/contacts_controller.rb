class ContactsController < ApplicationController
  skip_before_filter :authorize, :only => [:new]
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:notice] = "Your message has been received, you will receive a reply soon."
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
end
