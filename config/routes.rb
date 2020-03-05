Rails.application.routes.draw do
  root "users#main"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  get "/breweries/name", to: "breweries#by_name"
  get "/breweries/city", to: "breweries#by_city"
  get "breweries/:id/city", to: "breweries#showcity"
  get "/analytics", to: "users#analytics"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  post '/beers/:id/like', to: 'beers#like_beer'
  resources :breweries, only: [:index, :new, :create, :show]
  resources :beers, only: [:index, :new, :create, :show, :delete]
  resources :reviews
  resources :users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
