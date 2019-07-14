Rails.application.routes.draw do
  resources :items
  root 'items#index'
  post 'items' => 'items#create'
  get 'edit/:id' => 'items#edit'
  put '/edit/:id' => 'items#mark_complete'
end
