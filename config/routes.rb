Rails.application.routes.draw do
  resources :artists
  resources :albums
  resources :tracks, except: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#home'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  # get 'artists/:artist_id/tracks/:album_id', to: 'tracks#create'
end
