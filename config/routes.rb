Rails.application.routes.draw do
  resources :items do
    collection do
      get :authorize
    end
    member do
      match 'adaptive', to: 'items#adaptive', via: [:get]
    end
  end
  devise_for :users
  root to: "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
