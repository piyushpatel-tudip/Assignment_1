Rails.application.routes.draw do
  get 'information/index'
  resources :clients
  resources :freelancers
  root 'clients#index'
  get '/information/:id', to: 'information#show', as: 'information'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
