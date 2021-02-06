Rails.application.routes.draw do
  get '/' => 'homes#top'
  get 'books' => 'books#index', as: 'book_index'
  post 'books' => 'books#create'
  get 'books/new' => 'books#new', as: 'new_book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get 'books/:id' => 'books#show', as: 'book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
