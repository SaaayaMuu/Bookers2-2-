Rails.application.routes.draw do
  #get 'users/show'
  #get 'users/edit'
  #get 'books/new'
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
 # get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to:"homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'
  
  resources :books, only: [:new, :index, :show, :edit, :create, :destroy]
  resources :users, only: [:show, :edit, :index, :new, :update, :destroy]#:create
end

#books GET       /books(.:format)                  books#index
#new_book GET    /books/new(.:format)              books#new
#edit_book GET   /books/:id/edit(.:format)         books#edit
#book GET        /books/:id(.:format)              books#show

#users GET       /users(.:format)                  users#index
#edit_user GET   /users/:id/edit(.:format)         users#edit
#user GET        /users/:id(.:format)              users#show