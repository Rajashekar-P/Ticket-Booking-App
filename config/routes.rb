Rails.application.routes.draw do
  resources :theatre_movies
  resources :movies
  resources :theatres
  get '/search' => 'movies#search', :as => 'search_movie'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
