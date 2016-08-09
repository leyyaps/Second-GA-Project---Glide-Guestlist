Rails.application.routes.draw do

  resources :events
  devise_for :users
  root "statics#homepage"
  get 'users/:id', to: 'users#show', as: "user"
  get 'users', to:'users#index'
  get '/events/:id/run', to: 'events#run', as: :run_event
  post 'events/:id/book', to: 'events#book'
  patch 'events/:id/book', to: 'events#book'
  patch 'events/:id/admit', to: 'events#admit', as: :admit_event
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
