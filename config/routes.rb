Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"
  get "/users" => "users#index"

  post "/posts" => "posts#create"
  get "/posts" => "posts#index"

  get "/regions" => "regions#index"
  get "/regions/:id" => "regions#show"

  get "/locations" => "locations#index"

  post "/sessions" => "sessions#create"

end
