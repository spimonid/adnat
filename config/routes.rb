Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/organizations" => "organizations#index"
  get "/organizations/:id" => "organizations#show"

  post "/organizations" => "organizations#create"
  patch "/organizations/:id" => "organizations#update"

  post "/shifts" => "shifts#create"

  get "/user_organizations/:id" => "user_organizations#show"
  post "/user_organizations" => "user_organizations#create"
  post "/user_organizations/leave" => "user_organizations#leave_org"
end
