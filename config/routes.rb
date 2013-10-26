CarTalk::Application.routes.draw do
  resources :cars
  root :to => redirect('/cars')
end
