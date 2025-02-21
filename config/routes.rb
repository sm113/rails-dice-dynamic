Rails.application.routes.draw do
  get('/', {:controller => 'dice', :action => 'home'})
  get('/dice/:rolls/:faces', {:controller => 'dice', :action => 'roll'})
end
