Rails.application.routes.draw do

  devise_for :users
  root "statics#homepage"
  get 'users/:id', to: 'users#show', as: "user"
  get 'users', to:'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end