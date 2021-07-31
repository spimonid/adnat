Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/organizations" => "organizations#index"
  post "/organizations" => "organizations#create"
  patch "/organizations/:id" => "organizations#update"

  post "/shifts" => "shifts#create"
end
