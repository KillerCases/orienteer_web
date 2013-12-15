OrienteerWeb::Application.routes.draw do

# Intro Pages
  root "intro#index"
  get '/how', to: 'intro#how'
  get '/mobile', to: 'intro#mobile'

# Dashboard
  get '/dashboard', to: 'dashboard#index', as: 'user_root'
  resources :dashboard
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

# Mobile app data
  get '/map_points', to: 'map_points#index'

  get '/result', to: 'result#index'
  resources :result

  get '/mobile_user', to: 'mobile_user#index'
  resources :mobile_user

  get '/map', to: 'map#index'

end
