WorldCup::Application.routes.draw do
  devise_for :users
root to: 'home#index'
resources :home
resources :users
resources :teams
resources :coaches
resources :players
end
