Visdir::Application.routes.draw do
  get "/logout" => 'logins#destroy', :as => "logout"
  
  get "/login" => 'logins#new', :as => "login"
  post "/login" => 'logins#create', :as => "create_login"
  
  post "/create_user" => 'users#create', :as => "create_user"
  get "/signup" => 'users#new', :as => "signup"

  resources :listings, :path => :listing
  get '/fav' => 'listings#fav', :as => 'fav'
  get '/favs' => 'listings#favs', :as => 'favs'
  
  root :to => 'listings#index'
end
