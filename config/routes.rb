Rails.application.routes.draw do
  devise_for :users
  resources :formularios
  resources :cuestionarios
  resources :questions
  resources :surveys
  resources :questionnaires
  root to: 'visitors#index'
end
