Rails.application.routes.draw do
  get 'folders/index' => "folders#index"
  post 'folders/:post_id/create' => "folders#create"
  post 'folders/:post_id/destroy' => "folders#destroy"
  get "folders/:foldername_id" => "folders#show_folder"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "/" => "home#top"
  get "about" => "home#about"
end
