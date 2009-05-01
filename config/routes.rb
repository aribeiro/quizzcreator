ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'site', :action => 'index'
  
  map.resource :account, :controller => "users"
  map.resource :user_session    
  map.resources :password_resets
  map.resources :users
end
