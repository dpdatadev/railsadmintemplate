Rails.application.routes.draw do
  devise_for :users
  resources :rc_cars
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Defines the root path route ("/")
  root 'application#hello'
end
