CarTalk::Application.routes.draw do
  get "users/new"

  resources :sessions
  resources :cars
  root :to => redirect('/cars')
  resources :users
  root :to => redirect('/users')
  match ':controller(/:action(/:id))(.:format)'
end

