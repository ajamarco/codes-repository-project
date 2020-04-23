Rails.application.routes.draw do
 
  resources :users
  resources :posts
  get '/', to: 'users#welcome', as:'welcome'
  resources :tags, only: [:new, :create]

  get 'posts/:id/liked', to: 'posts#add_like_to_post', as: "liked_post"
  post '/search/posts' => 'searchs#search_posts'

end
