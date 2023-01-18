Rails.application.routes.draw do
  get 'activity/:project_id', to: 'activity#show'
  post 'activity/:project_id', to: 'activity#create'
  put 'activity/:id', to: 'activity#update'
  patch 'activity/:id', to: 'activity#update'
  delete 'activity/:id', to: 'activity#delete'
  
  get 'executor', to: 'executor#index'
  post 'executor', to: 'executor#create'
  put 'executor/:id', to: 'executor#update'
  patch 'executor/:id', to: 'executor#update'

  get 'project', to: 'project#index'
  post 'project', to: 'project#create'
  put 'project/:id', to: 'project#update'
  patch 'project/:id', to: 'project#update'

  get 'category', to: 'category#index'
  post 'category', to: 'category#create'
  delete 'category/:id', to: 'category#delete'

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
