Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts
  get '/', to: 'users#welcome', as:'welcome'
  #post '/posts/add_tag', to: 'posts#add_tag', as:'add_tag'
  # get 'tags/new', to: 'tags#new'
  # post 'tags/new', to: 'tags#create'
  resources :tags, only: [:new, :create]

  get 'posts/:id/liked', to: 'posts#add_like_to_post', as: "liked_post"

end
