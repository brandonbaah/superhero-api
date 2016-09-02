Rails.application.routes.draw do

  get '/' => 'superheroes#index'
  
  namespace :api do
    namespace :v1 do
      get '/superheroes/:id' => 'superheroes#show'
      get '/superheroes' => 'superheroes#index'
      post '/superheroes' => 'superheroes#create'
      delete '/superheroes' => 'superheroes#destroy'
    end
  end

  namespace :api do
    namespace :v2 do
      get '/superheroes/:id' => 'superheroes#show'
      get '/superheroes' => 'superheroes#index'
      post '/superheroes' => 'superheroes#create'
      delete '/superheroes' => 'superheroes#destroy'
    end
  end
end
