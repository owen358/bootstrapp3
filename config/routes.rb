Rails.application.routes.draw do
  devise_for :users
  resources :formularios
  resources :questionnaires
  root to: 'visitors#index'
end
