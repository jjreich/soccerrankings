Rails.application.routes.draw do
  resources :positions
  devise_for :users
  resources :games
  resources :player_game_subdata
  resources :club_types
  resources :player_ball_skills
  resources :players
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  devise_scope :user do
    get 'register', to: 'users/registrations#new', as: :register
    get 'login', to: 'users/sessions#new', as: :login
    get 'logout', to: 'users/sessions#destroy', as: :logout
    get '/users/sign_up/:initial_role', to: 'users/registrations#new', as: :new_user_with_role
  end

  get 'users/:id' => 'users#show', :as => :user
  get 'users/:id/edit' => 'users#edit', :as => :edit_user
  get 'users' => 'users#index', :as => :users
  patch 'users/:id' => 'users#update'

  
end
