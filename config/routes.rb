Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get 'homes/about',as:"home_about"
  resources:users
  # resources:users,only:[:index,:show,:edit,:update]
  resources:books
  # resources:books,only:[:index,:show,:edit,:update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end