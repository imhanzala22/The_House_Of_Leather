Rails.application.routes.draw do
  namespace :admins do
    get 'wallet/index'
    resources :bags
    resources :shoes
    resources :vaulet
    resources :leather_bag
    resources :jackets
    resources :belts 
  end
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
