Rails.application.routes.draw do

  get 'users/show'

  root 'board#show'

  get 'board/show'

  get 'board/new'

  get 'board/index'

  get 'board/create', to: 'board#create'

  get 'board/share', to: 'board#share'
  get 'board/confirmation', to: 'board#confirmation'
  post '/users/show'
  devise_for :users
  get 'match/index', to: 'match#index'
  get 'users/show', to: 'users#show'

  post 'board/confirmation'

  get 'board/next', to: 'board#next', as: 'next'
end

#devise_for :users, controllers: {
#        sessions: 'users/sessions'
#      }
