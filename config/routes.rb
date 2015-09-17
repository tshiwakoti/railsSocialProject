Rails.application.routes.draw do

    root 'session#index'

    get '/signup' => 'users#new'
    get '/login'  => 'users#login'
    get '/storyboard'  => 'users#storyboard'

end
