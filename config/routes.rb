Rails.application.routes.draw do
  get 'books/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
   # .../todolists/1 や .../todolists/3 に該当する
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
