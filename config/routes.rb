Rails.application.routes.draw do
  root 'board#index'
  get 'board/index'
  get 'board/test', to: 'board#core_test'

end
