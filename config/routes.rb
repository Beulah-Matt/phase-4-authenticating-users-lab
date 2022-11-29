Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  #Creating a login session
  post "/login", to: "sessions#create"

  #Staying logged in
  get "/me", to: "users#show"

  #Login out
  delete "/logout", to: "sessions#destroy"
  
end
