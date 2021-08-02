Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/current_user" => "users#get_current_user"

  post "/sessions" => "sessions#create"

  get "/organizations" => "organizations#index"
  get "/organizations/:id" => "organizations#show"

  post "/organizations" => "organizations#create"
  patch "/organizations/:id" => "organizations#update"

  get "/shifts" => "shifts#index"
  post "/shifts" => "shifts#create"

  get "/user_organizations/:id" => "user_organizations#show"
  post "/user_organizations" => "user_organizations#create"
  post "/user_organizations/leave" => "user_organizations#leave_org"
end
