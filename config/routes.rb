Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  # resources :users

  resources :events
  post "/favourites/:id", to: "events#postfav" , as: "post_fav"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
