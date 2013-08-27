WorldCup::Application.routes.draw do
  get "search/index"

  resources :comments


  devise_for :users
root to: 'home#index'
resources :home
resources :users
resources :teams
resources :coaches
resources :players
resources :match_schedule
end
