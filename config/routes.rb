ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => 'site', :action => 'index'
  
  map.resource :account, :controller => "users"
  map.resource :user_session    
  map.resources :password_resets
  map.resources :users
  
  map.resources :quizzs, :controller => "quizzs", :has_many => :questions 
  
  map.resources :subscribers
  map.resources :users, :has_many => :subscribers
end
