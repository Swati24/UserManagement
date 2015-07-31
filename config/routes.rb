UserManagement::Application.routes.draw do
  devise_for :users

  use_doorkeeper

  resources :users

  get '/me' => 'users#new'

  root :to => 'users#new'

end
