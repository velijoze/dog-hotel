Rails.application.routes.draw do
  devise_for :users
  resources :dog_registrations
  resources :users
  root 'main#index'
  get 'about', to: 'main#about'
  get 'daycare', to: 'main#daycare'
  get 'boarding', to: 'main#boarding'
  get 'training', to: 'main#training'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
