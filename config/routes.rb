Rails.application.routes.draw do
  resources :artist_genres
  resources :genres
  resources :songs
  resources :albums
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      get '/artists', to: 'artists#index', as: :artists
      get '/albums', to: 'albums#index', as: :albums
    end
  end
end
