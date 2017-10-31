Rails.application.routes.draw do

devise_for :users

resources :groups do
  resources :posts

  member do
    post :join
    post :quit
  end
end

root 'groups#index'

namespace :account do
  resources :groups
  resources :posts
end

end
