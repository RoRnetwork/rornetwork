Rails.application.routes.draw do
  resources :posts
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
