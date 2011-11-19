TND::Application.routes.draw do
  get "home/index"

 match '/auth/:provider/callback', :to => 'sessions#create'
 root :to=>'home#index'
end
