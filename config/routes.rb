CarTalk::Application.routes.draw do
  get "info_pages/home"

  get "info_pages/help"

  get "info_pages/about"

  get "users/new"

  resources :sessions
  resources :info_pages
  root :to => redirect('/info_pages/home')
  resources :cars
  root :to => redirect('/cars')
  resources :users
  root :to => redirect('/users')
  match ':controller(/:action(/:id))(.:format)'
end

