Rails.application.routes.draw do
  # public routes
  get 'users/sign_in'
  get 'users/sign_up'

  # authenticated routes
  get 'users/reset_password'
  get 'clients', to: 'clients#index' 
  get 'clients/:id', to: 'clients#show' 
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
