Rails.application.routes.draw do
  
  root 'static_pages#home'

  get '/new', to: 'users#new'
  post '/new', to: 'users#create'

  get '/prive', to: 'users#pageprive'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/login', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
