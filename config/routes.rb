Rails.application.routes.draw do
  get 'users/indx'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"homes#top"

  resources:books,only:[:index,:show,:edit]
  resources:users,only:[:index,:show,:edit]

  get "homes/about"=>"homes#about",as:"about"
end
