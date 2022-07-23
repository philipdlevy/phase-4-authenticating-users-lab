Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  # Sessions controller routes
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # Users controller route
  get "/me", to: "users#show"

end
