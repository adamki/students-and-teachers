Rails.application.routes.draw do
  root 'students#index'
  resources :users
end
