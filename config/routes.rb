Rails.application.routes.draw do
  root 'board#index'
  get 'board/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
