Rails.application.routes.draw do
  get '/orders' => 'orders#index'
  post '/orders' => 'orders#create'
  post 'user_token' => 'user_token#create'
  get '/products' => 'products#index'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'
  post '/users' => 'users#create'
  post '/carted_products' => 'carted_products#create'
end
