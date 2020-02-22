Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :posts

  get 'posts/:id/single_post', to: 'posts#single_post', as: 'single_post'

end

# get 'drink/:id', to: 'drinks#show' 
