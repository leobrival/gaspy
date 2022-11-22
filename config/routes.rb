Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :baskets
  resources :products do 
    resources :basket_items, only: [:create]
  end 
  resources :basket_items, only: [:update, :delete]
  resources :relay_points
  # get 'profile', to: 'pages#profile', as: :profile
end
