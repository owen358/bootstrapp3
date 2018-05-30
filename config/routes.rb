Rails.application.routes.draw do
  resources :formularios
  resources :cuestionarios
  resources :questions
  resources :surveys
  resources :questionnaires
  root to: 'visitors#index'
end
