Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :meals, only: [ :index, :show ]
      resources :orders, only: [ :index, :show, :create ]
    end
  end
end
