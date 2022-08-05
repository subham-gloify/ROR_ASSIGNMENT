Rails.application.routes.draw do
  get 'author/index'
  get 'author/show'
  get 'author/new'
  get 'author/create'
  get 'author/edit'
  get 'author/update'
  get 'author/destroy'
  get 'library/index'
  get 'library/show'
  get 'library/new'
  get 'library/create'
  get 'library/edit'
  get 'library/update'
  get 'library/destroy'
  get 'book/index'
  get 'book/show'
  get 'book/new'
  get 'book/create'
  get 'book/edit'
  get 'book/update'
  get 'book/destroy'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
