Rails.application.routes.draw do

get "/capstones" => "capstones#index"
post "/capstones" => "capstones#create"
get "/capstones/:id" => "capstones#show"
patch "/capstones/:id" => "capstones#update"
delete "/capstones/:id" => "captsones#destroy"

get "/educations" => "educations#index"
post "/educations" => "educations#create"
get "/educations/:id" => "educations#show"
patch "/educations/:id" => "educations#update"
delete "/educations/:id" => "educations#destroy"

get "/experiences" => "experiences#index"
post "/experience" => "experiences#create"
get "/experiences/:id" => "experiences#show"
patch "/experiences/:id" => "experiences#update"
delete "/experiences/:id" => "experiences#destroy"

get "/skills" => "skills#index"
post "/skills" => "skills#create"
get "/skills/:id" => "skills#show"
patch "/skills/:id" => "skills#update"
delete "/skills/:id" => "skills#destroy"

get "/students" => "students#index"
post "/students" => "students#create"
get "/students/:id" => "students#show"
patch "/students/:id" => "students#update"
delete "/students/:id" => "students#destroy"

end
