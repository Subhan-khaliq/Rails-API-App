# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :hobbies
      end
    end
  end
  post '/auth/login', to: 'authentication#login'
end
