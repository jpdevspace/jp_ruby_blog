Rails.application.routes.draw do
  root "pages#home"

  get "/about", to: "pages#about"
  
  # This is the same as handling each CRUD operation
  # on a separate line, something like
  # get "/articles", to: "articles#index" => Show ALL articles
  # get "/articles/:id", to: "articles#show" => Show ONE article

  resources :articles, only: [:show, :index, :new, :create]
end