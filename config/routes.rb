Rails.application.routes.draw do
  resources :messages
  resources :rooms


  root 'posts#index', as: 'home'
  get 'about', to: 'pages#about'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  resources :posts do
    resources :comments
  end
end
