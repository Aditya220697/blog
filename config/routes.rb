Rails.application.routes.draw do 
  resources :avis
  resources :avinashes
  resources :books
  resources :articles do
    resources :comments
  end
  # get "/articles" , to: "articles#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/home/index"

  # get "/articles/:id", to: "articles#show"
  # Defines the root path route ("/")
  root "articles#index"
end
