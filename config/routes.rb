Rails.application.routes.draw do
  root 'home#top'
  get 'users/index',　to: 'users#index'
  get 'users/new',　to:　'users#new'
  post 'users',　to:　'users#create'
  get 'users/:id',　to:　'users#show',　as: :user
  get 'users/:id/edit',　to: 'users#edit',　as: :user_edit
  patch 'users/:id/update',　to: 'users#update',　as: :user_update
  delete 'users/:id/destroy',　to: 'users#destroy',　as: :user_destroy
end
