Rails.application.routes.draw do
  devise_for :users

    #authenticated :user do
      #root 'index#index', as: :authenticated_root
    #end

  resources :tips
  root 'index#index'

  get '/users/', to: 'users#index', as: 'users'
  get '/users/:user_id', to: 'users#show', as: 'user'

  get '/users/:user_id/tips', to: 'usertips#index', as: 'user_tips'
  get '/users/:user_id/tips/new', to: 'usertips#new', as: 'new_user_tip'
  post '/users/:user_id/tips', to: 'usertips#create', as: 'create_user_tip'
  get '/users/:user_id/tips/:id', to: 'usertips#show', as: 'user_tip'
  get '/users/:user_id/tips/:id/edit', to: 'usertips#edit', as: 'edit_user_tip'
  patch '/users/:user_id/tips/:id', to: 'usertips#update', as: 'update_user_tip'
  delete '/users/:user_id/tips/:id', to: 'usertips#destroy', as: 'delete_user_tip'


end
