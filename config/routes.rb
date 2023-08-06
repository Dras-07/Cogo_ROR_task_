Rails.application.routes.draw do
  resources :posts do
    resources :likes, only: [:create]
    resources :comments, only: [:create]
    
  end

  resources :posts do
    member do
      delete :destroy, as: :delete_post
    end
  end

  post '/posts/filter', to: 'posts#filter'
  post '/posts/search', to: 'posts#search'

  post '/users/register', to: 'users#create'
  post '/users/login', to: 'users#login'
  get '/users/profile', to: 'users#profile'
  get '/users/my_posts', to: 'users#my_posts'

end
