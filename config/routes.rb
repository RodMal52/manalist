Manalist::Application.routes.draw do
  resources :deck_matchups

  resources :card_expansions

  resources :deck_sides

  resources :side_cards

  resources :deck_cards

  resources :player_relationships

  resources :side_boards

  resources :decks

  resources :expansions

  resources :cards

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  
    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
  end
  
end
