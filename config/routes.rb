Rails.application.routes.draw do
  root 'board#index'
  get 'board/index'
  get 'board/share', to: 'board#share'

end
