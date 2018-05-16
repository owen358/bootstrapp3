Rails.application.routes.draw do
  resources :questionnaires
  root to: 'visitors#index'
end
