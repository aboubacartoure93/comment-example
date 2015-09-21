Rails.application.routes.draw do
  
  resources :posts do
    resources :comments, shallow: true, only:[:create, :destroy]
  end




# hfksnkfbkslkflsdskfbskcnwbvrsjdskbjbefnsv;lwklsbvnslivwrsbkvdwbio
 




 get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  resources :users do
    member do
      post '/follow', to: 'users#follow'
      post '/unfollow', to: 'users#unfollow'
    end
  end

  resources :chirps
  get '/profile', to: 'users#profile'
  get '/profile/:username', to: 'users#show', as: 'profile_user'

  # You can have the root of your site routed with "root"
  root 'posts#index'
end
