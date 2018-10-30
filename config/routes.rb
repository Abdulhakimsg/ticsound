Rails.application.routes.draw do
  devise_for :users

  resources :users, :only => [:show]
  # resources :users

  resources :events
  post "/favourites/:id", to: "events#postfav", as: "post_fav"
  get "/favourites", to: "events#showfav", as: "show_fav"
  #ajax request
  get "/users-coordinates", to: "users#currloca", as:"user_currloc"
  # get "/favourites/:id"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #/users/coordinates?lat=${latitude}&lon=${longitude}
end
