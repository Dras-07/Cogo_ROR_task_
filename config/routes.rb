Rails.application.routes.draw do
  resources :posts do
    resources :likes, only: [:create]
    resources :comments, only: [:create]
  end

  post '/posts/filter', to: 'posts#filter'
  post '/posts/search', to: 'posts#search'

  post '/users/register', to: 'users#create'
  post '/users/login', to: 'users#login'
  get '/users/profile', to: 'users#profile'
  get '/users/my_posts', to: 'users#my_posts'

  # You can add routes for follow and other_author_profile actions if needed
end
