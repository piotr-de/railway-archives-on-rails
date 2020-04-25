Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :units, only: [ :index, :show ]
  get "/search", to: "units#search", as: :search
  get "/contact", to: "users#index", as: :contact
  post "/contact", to: "users#send_form", as: :send_form
end
