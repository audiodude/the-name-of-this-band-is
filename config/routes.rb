Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'api/users/is_admin', to: "user#is_admin"
  get 'api/items', to: "item#index"

  root 'home#index'
end
