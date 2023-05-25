Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources: movies, only: [:show, :index:]

  concern :bookmarkable do
    resources :bookmarks, only: [:new, :create]
  end

  # resources :movies, concerns: :bookmarkable
  resources :lists, concerns: :bookmarkable, only: [:new, :create, :show, :index]

  resources :bookmarks, only: :destroy
end
