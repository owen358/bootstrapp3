Rails.application.routes.draw do
  devise_for :users
  resources :formularios
  resources :questionnaires
  root to: 'pages#index'
end
