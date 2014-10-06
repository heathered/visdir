Visdir::Application.routes.draw do
  get "/logout" => 'logins#destroy', :as => "logout"
  
  get "/login" => 'logins#new', :as => "login"
  post "/login" => 'logins#create', :as => "create_login"
  
  post "/create_user" => 'users#create', :as => "create_user"
  get "/signup" => 'users#new', :as => "signup"

  resources :listings, :path => :listing
  get '/fav' => 'listings#fav', :as => 'fav'
  get '/favs' => 'listings#favs', :as => 'favs'
  
  get '/by_cat' => 'listings#by_cat' 
  get '/by_loc' => 'listings#by_loc' 
  get '/by_budget' => 'listings#by_budget'
  
  root :to => 'listings#index'
end
