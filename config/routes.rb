PortfolioApp::Application.routes.draw do
  root :to => 'pages#home'
  
  # Login routes
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  get "logout" => 'logins#destroy', :as => "logout"
  
  # User Signup routes
  get "signup" => 'users#new', :as => "signup"
  post "create_user" => 'users#create', :as => "create_user"
  
  resources :projects, :contacts
end
