# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/pages/:page' => 'pages#show'
  # get '/static/:permalink', to: 'pages#permalink', as: 'permalink'
  get '/pages/:page' => 'pages#show'
  get '/players/:page' => 'players#show'
  get '/teams/:page' => 'teams#show'

  root 'pages#show', page: 'home'
end
