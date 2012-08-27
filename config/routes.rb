Remoteprinter::Application.routes.draw do
  
  # login and logout routes
  match '/login' => 'sessions#new', :as => :login
  match '/logout' => 'sessions#destroy', :as => :logout
  match '/registration' => 'users#new', :as => :registration
  
  # crud resources
  resources :users, :except => :destroy
  resources :sessions
  resources :printers, :only => [:index, :show]
  resources :transactions, :only => [:index, :show]
  resources :jobs, :only => [:index, :show]
  resources :uploaded_files, :only => [:index, :show]

  # dashboard
  match '/dashboard' => 'dashboard#index', :as => :dashboard
  
  # public pages
  match '/how_it_works' => 'public#how_it_works'
  root :to => 'public#index'
  
end
