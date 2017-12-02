Rails.application.routes.draw do
  devise_for :users
  resources :firms
  resources :skills

  root 'firms#index'
end
