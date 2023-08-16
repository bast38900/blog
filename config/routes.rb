Rails.application.routes.draw do
  root "articles#index"

  # old routes
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  # with only 1 model
  # resources :articles

  # with multiple models and associations
  resources :articles do
    resources :comments
  end
end
