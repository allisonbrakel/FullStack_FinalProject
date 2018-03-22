Rails.application.routes.draw do
  get 'categories', to: 'category#index'

  get 'categories/:id', to: 'category#show'

  get 'search', to: 'search#index'

  get 'products', to: 'products#index'
  get 'products/:id', to: 'products#show'

  root to: 'products#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
