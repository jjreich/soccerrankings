Rails.application.routes.draw do
  resources :games
  resources :player_game_subdata
  resources :club_types
  resources :player_ball_skills
  resources :players
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
