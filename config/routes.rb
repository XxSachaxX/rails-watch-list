Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: %w[show new create] do
    resources :bookmarks, only: %w[new create]

  end
  resources :bookmarks, only: %w[destroy]
  resources :movies, only: %w[index show]
  # Defines the root path route ("/")
  # root "articles#index"
end
