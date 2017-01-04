Rails.application.routes.draw do
  root 'application#hello'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy', as: 'logout'

end
