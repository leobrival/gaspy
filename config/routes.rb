Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :baskets do
    member do
      get :delivery
      get :order
      post :order_submit
      get :validation
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
