Rails.application.routes.draw do
  root "pages#home"

  get "/about", to: "pages#about"
  
  # This is the same as handling each CRUD operation
  # on a separate line, something like
  # get   "/articles",          to: "articles#index"    => :index (show ALL)
  # get   "/articles/:id",      to: "articles#show"     => :show (show ONE)
  # get   "/articles/new",      to: "articles#new "     => :new (form to create one)
  # post  "/articles"           to: "articles#create"   => :create (handles creation)
  # get   "/articles/:id/edit"  to: "articles#edit"     => :edit (form to edit)
  # patch "/articles/:id"       to: "articles#update"   => :update (handles update)
  # delete "/articles/:id"      to: "articles#destroy"  => :destroy

  # You can enable specific HTTP verbs like this
  # resources :articles, only: [:show, :index]

  # or enable all HTTP verbs
  resources :articles

end