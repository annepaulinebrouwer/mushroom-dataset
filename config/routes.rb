Rails.application.routes.draw do
  root to: "pages#home"
  resources :mushrooms, only: [:index]
end
