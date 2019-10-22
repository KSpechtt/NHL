# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Gets our about page
  get '/pages/about', to: 'pages#about', as: 'about'

  # Getting our players and teams index view
  resources :players, only: :index
  resources :teams, only: :index

  # Setting our home page
  root to: 'pages#home'
end
