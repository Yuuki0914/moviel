Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'movies/youga' => 'movies#youga'
  get 'movies/houga' => 'movies#houga'
  get 'movies/about' => 'movies#about'
  resources :users, only: [:show]  
  resources :movies do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end 
  resources :tweets
  root 'movies#top'
end