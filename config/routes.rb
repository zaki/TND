TND::Application.routes.draw do
  get "home/index"

  resources :items, :except=>:index

  match '/auth/:provider/callback', :to => 'sessions#create'
  root :to=>'home#index'
end
