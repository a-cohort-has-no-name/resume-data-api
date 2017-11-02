Rails.application.routes.draw do
  resources :capstones, :capstones, :experiences, :skills, :students, except: [:new, :edit]

end
