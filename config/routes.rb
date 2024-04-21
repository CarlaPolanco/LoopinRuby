Rails.application.routes.draw do
  resources :spents
  resources :users

  get "up" => "rails/health#show", as: :rails_health_check

  root 'users#pagPrincipal'
end
