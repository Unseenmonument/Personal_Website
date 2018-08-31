Rails.application.routes.draw do
  
  root 'home#homepage'

  get '/fan/index' => 'fan#index'

  get '/fan/edit' => 'fan#edit'

  get '/fan/new' => 'fan#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  

  get '/homepage' => 'home#homepage'

  post '/create' => 'create#homepage'

  resources :homes
  resources :webemployers
  resources :helps
  resources :fans
  resources :todos

end
