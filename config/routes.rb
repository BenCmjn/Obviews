Rails.application.routes.draw do

  get 'users/show'

  get 'board/get_ids'

  get 'board/new'

  root 'board#index'
  get 'board/index'
  get 'board/share', to: 'board#share'
  get 'board/confirmation', to: 'board#confirmation'
  devise_for :users
  get 'match/index', to: 'match#index'
  get 'users/show', to: 'users#show'
end

#devise_for :users, controllers: {
#        sessions: 'users/sessions'
#      }
