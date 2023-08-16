Rails.application.routes.draw do
  root "articles#index"

  # old routes
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  resources :articles
end
