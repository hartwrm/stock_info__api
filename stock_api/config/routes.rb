Rails.application.routes.draw do
  resources :ledgers
  resources :prices, only: [:index]
  resources :companies do
    resources :prices, only: [:create]
  end
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
