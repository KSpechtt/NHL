# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Gets our about page
  get '/pages/about', to: 'pages#about', as: 'about'

  # Getting our players and teams index view
  resources :players, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end
  resources :teams, only: %i[index show]
  resources :conferences
  resources :divisions

  # Setting our home page
  root to: 'pages#home'
end
