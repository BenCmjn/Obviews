Rails.application.routes.draw do

  get 'board/get_ids'

  get 'board/new'

  root 'board#index'
  get 'board/index'
  get 'board/share', to: 'board#share'
  get 'board/confirmation', to: 'board#confirmation'
  devise_for :users
  get 'match/index', to: 'match#index'
end
