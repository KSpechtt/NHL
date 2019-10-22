# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pages, only: [:show]

  get '/pages/about', to: 'pages#about', as: 'about'

  resources :players, only: :index
  resources :teams, only: :index

  root to: 'pages#home'
end
