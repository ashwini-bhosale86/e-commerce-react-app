Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'items/index'
      post 'items/create'
      get '/show/:id', to: 'items#show'
      delete '/destroy/:id', to: 'items#destroy'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
