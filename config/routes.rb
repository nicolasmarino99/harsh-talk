Rails.application.routes.draw do
  resources :stores, only: [:create] do
    resources :products, only: [:index, :show] do
      post :inventory, on: :member, action: :update_inventory
    end
  end

  resources :products, only: [:create]
end
