Rails.application.routes.draw do
  get 'categories', to: 'category#index'
  get 'pages', to: 'page#index'
  get 'pages/:id', to: 'page#show'

  get 'categories/:id', to: 'category#show'

  get 'search', to: 'search#index'

  get 'products', to: 'products#index'
  get 'products/:id', to: 'products#show'

  post 'products/:id/add_to_cart', to: 'products#add_to_cart'
  post 'products/:id/remove_from_cart', to: 'products#remove_from_cart'
  get 'cart', to: 'products#cart'


  root to: 'products#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
