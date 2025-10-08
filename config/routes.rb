Rails.application.routes.draw do
  root "lists#index"

  resources :lists do
    resources :tasks, only: [:create, :update, :destroy] do
      member do
        patch :toggle_complete
      end
    end
  end
end
