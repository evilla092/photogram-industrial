Rails.application.routes.draw do
  root "photos#index"


  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  devise_for :users

  get "/:username" => "users#show", as: :user

end
