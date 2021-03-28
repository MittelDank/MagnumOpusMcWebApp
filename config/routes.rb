Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static#index'
  
  resources :sessions, only: [:new, :destroy, :create]
  get 'sessions/user_check', to: 'sessions#user_check', as: :user_check
  get '/logout', to: 'sessions#destroy'
end
