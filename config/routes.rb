Rails.application.routes.draw do
  resources :capstones, :experiences, :skills, :students, :educations, except: [:new, :edit]

end
