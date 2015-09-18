Rails.application.routes.draw do

    root 'session#index'
    get '/storyboard' => 'users#storyboard'
    get '/signup' => 'users#new'
    get '/login'  => 'session#new'


    post '/users' => 'users#create'
    post '/sessions' => 'session#create'

end
