Rails.application.routes.draw do

  root 'board#index'
  get 'board/index'
  get 'board/share', to: 'board#share'
  get 'board/confirmation', to: 'board#confirmation'
  devise_for :users
end

#devise_for :users, controllers: {
#        sessions: 'users/sessions'
#      }
