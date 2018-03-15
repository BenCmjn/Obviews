Rails.application.routes.draw do

  get 'users/show'

  root 'board#show'

  get 'board/show'
  get 'board/share', to: 'board#share'
  get 'board/confirmation', to: 'board#confirmation'
  devise_for :users
  get 'match/index', to: 'match#index'
  get 'users/show', to: 'users#show'
end

#devise_for :users, controllers: {
#        sessions: 'users/sessions'
#      }
