Rails.application.routes.draw do
  resources :items
  root 'items#index'
  delete '/' => 'items#delete_all_items'
  post 'items' => 'items#create'
  get 'edit/:id' => 'items#edit'
  put '/edit/:id' => 'items#mark_complete'
  delete '/edit/:id' => 'items#delete'
end
