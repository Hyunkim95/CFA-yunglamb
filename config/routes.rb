Rails.application.routes.draw do
  resources :posts do
    member do
      resources :comments
    end
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'pages/index'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
