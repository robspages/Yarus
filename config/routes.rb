Knktr3::Application.routes.draw do
  resources :users
  resources :httpstatuses
  resources :links

  root :to => 'links#new'
  match '/:id' => "short_urls/show/:id"
  
end
