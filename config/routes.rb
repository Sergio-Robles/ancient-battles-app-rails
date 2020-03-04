Rails.application.routes.draw do
  resources :users
  resources :armies 
  resources :army_units
  # resources :army_units do 
  #   resources :armies 
  # end 


  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  get '/units/generals', to: 'units#generals', as: 'generals'
  get '/units/infantries', to: 'units#infantries', as: 'infantry'
  get '/units/cavalries', to: 'units#cavalries', as: 'cavalry'
  get '/units/missiles', to: 'units#missiles', as: 'missile'
  get '/units/artilleries', to: 'units#artilleries', as: 'artillery'
  

  resources :units
  resources :unit_types 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
