Rails.application.routes.draw do
  get 'dashboard/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'  

  root 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get 'dashboard', to: 'dashboard#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
