ActionController::Routing::Routes.draw do |map|
	map.resources :stories, :has_many => :votes, :collection => { :bin => :get }
	map.resources :users
	map.resources :tags
	map.resource :session

  map.root :controller => "stories"
  
	map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
