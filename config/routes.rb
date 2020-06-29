Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/bloggers/new', to: "bloggers#new"
  post '/bloggers', to: "bloggers#create"
  get '/bloggers/:id', to: "bloggers#show", as: 'blogger'

  get '/destinations/:id', to: "destinations#show", as: 'destination'

  get '/posts/new', to: "posts#new"
  get '/posts/:id', to: "posts#show", as: 'post'
  post '/posts', to: "posts#create"
  get '/posts/:id/edit', to: 'posts#edit'
  patch '/posts/:id', to: 'posts#update'
  post '/posts/:id/like', to: 'posts#like', as: 'like_post'

end
