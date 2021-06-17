Rails.application.routes.draw do
  root "pages#home"

  get "/about", to: "pages#about"
  
  # All articles
  resources :articles, only: [:show, :index]
end
