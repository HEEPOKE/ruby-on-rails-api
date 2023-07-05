Rails.application.routes.draw do
  namespace :apis do
    get '/users/all', to: 'apis#index'
    get '/users/:id', to: 'apis#show'
    post '/users/create', to: 'apis#create'
    put '/users/update/:id', to: 'apis#update'
    delete '/users/delete/:id', to: 'apis#destroy'
  end
end
