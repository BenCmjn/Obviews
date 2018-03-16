Rails.application.routes.draw do

  get 'users/show'

  get 'board/get_ids'

  get 'board/new'

  root 'board#index'
  get 'board/index'
  get 'board/create', to: 'board#create'
  get 'board/share', to: 'board#share'
  get 'board/confirmation', to: 'board#confirmation'
  post '/users/show'
  devise_for :users
  get 'match/index', to: 'match#index'
  get 'users/show', to: 'users#show'

  post 'board/confirmation'
end

#devise_for :users, controllers: {
#        sessions: 'users/sessions'
#      }
