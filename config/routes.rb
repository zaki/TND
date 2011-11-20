TND::Application.routes.draw do
  get "home/index"

  resources :items, :except=>:index

  get 'boards/friends', :as=>:friends_board
  get 'boards/me',      :as=>:my_board
  get 'boards/nearby',  :as=>:nearby_board

  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/session/destroy', :to=>'sessions#destroy', :as=>:destroy_session
  root :to=>'home#index'
end
