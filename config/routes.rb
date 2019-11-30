Rails.application.routes.draw do
  root 'home#top'
  get 'users/index',to: 'users#index'
  get 'users/new',to:'users#new'
  post 'users', to:'users#create'
  get 'users/id/edit',to: 'users#edit',as: :user_edit
  post 'users/id/update',to: 'users#update',as: :user_update
  get 'users/:id',to: 'users#show' ,as: :user
end
