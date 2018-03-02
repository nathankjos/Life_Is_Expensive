Rails.application.routes.draw do
root "users#index"
resources :users
resources :expenses
resources :sessions, only: [:new, :create]
delete "/logout" => "sessions#destroy", as: :logout
end