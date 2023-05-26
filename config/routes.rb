Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"

  # get 'lists', to: 'lists#index'

  concern :bookmarkable do
    resources :bookmarks, only: [:new, :create]
  end

  resources :lists, concerns: :bookmarkable, only: [:new, :create, :show, :index]

  resources :lists, only: :destroy
  resources :bookmarks, only: :destroy
end
