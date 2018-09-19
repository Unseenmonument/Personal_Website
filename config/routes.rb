Rails.application.routes.draw do
  
  root 'home#homepage'



  resources :homes do
    resources :webemployers
    resources :helps
    resources :fans
    resources :todos
  end

  resources :fans
  resources :webemployers
  resources :helps
  resources :todos
  
end
