PortfolioApp::Application.routes.draw do
  root :to => 'pages#home'
  
  # User Signup route
  get "signup" => 'users#new', :as => "signup"
  post "create_user" => 'users#create', :as => "create_user"
  
  
end
