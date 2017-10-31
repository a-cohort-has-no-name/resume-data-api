Rails.application.routes.draw do

get "/capstone" => "capstones#index"
post "/capstone" => "capstones#create"
get "/capstone/:id" => "capstones#show"
get "/capstone/:id/edit" => "capstones#edit"
patch "/capstone/:id" => "capstones#update"
delete "/capstone/:id" => "captsones#destroy"

get "/education" => "educations#index"
post "/education" => "educations#create"
get "/education/:id" => "educations#show"
get "/education/:id/edit" => "educations#edit"
patch "/education/:id" => "educations#update"
delete "/education/:id" => "educations#destroy"

get "/experience" => "experiences#index"
post "/experience" => "experiences#create"
get "/experience/:id" => "experiences#show"
get "/experience/:id/edit" => "experiences#edit"
patch "/experience/:id" => "experiences#update"
delete "/experience/:id" => "experiences#destroy"

get "/skill" => "skills#index"
post "/skill" => "skills#create"
get "/skill/:id" => "skills#show"
get "/skill/:id/edit" => "skills#edit"
patch "/skill/:id" => "skills#update"
delete "/skill/:id" => "skills#destroy"

get "/student" => "students#index"
post "/student" => "students#create"
get "/student/:id" => "students#show"
get "/student/:id/edit" => "students#edit"
patch "/student/:id" => "students#update"
delete "/student/:id" => "students#destroy"

end
