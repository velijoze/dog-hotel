Rails.application.routes.draw do
  resources :dog_registrations
  resources :users
  root 'main#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
