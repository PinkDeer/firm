Rails.application.routes.draw do
  resources :firms

  root 'firms#index'
end
