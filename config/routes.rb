Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :baskets do
    member do
      get :order
      post :order_submit
    end
    resources :basket_items, only: [:show]
  end
  resources :products do
    resources :basket_items, only: [:create]
  end
  resources :basket_items, only: [:update, :delete]
  resources :relay_points
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
end
