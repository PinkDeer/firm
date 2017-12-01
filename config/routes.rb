Rails.application.routes.draw do
  resources :firms
  resources :skills

  root 'firms#index'
end
