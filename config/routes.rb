Rails.application.routes.draw do
  
  root 'home#homepage'

  get '/fan/index' => 'fan#index'

  get '/fan/edit' => 'fan#edit'

  get '/fan/new' => 'fan#new'

  get '/homepage' => 'home#homepage'

  resources :homes do
    resources :webemployers
    resources :helps
    resources :fans
    resources :todos
  end

  resources :fans
  resources :webemployers
  resources :helps
end
