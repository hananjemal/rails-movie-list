Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  resources :lists do
    resources :bookmarks, only: [:new,:create]
  end
  resources :bookmarks, only: [:destroy]
  # get "new", to: "lists#new"
  # post "lists", to:"lists#create"
  # get "/:id", to: "lists#show", as: :show
  # get "/:list_id/bookmarks/new", to: "bookmarks#new", as: :bookmark_new
  # post "/:list_id/bookmarks", to:"bookmarks#create", as: :bookmarks_list
end
