Rails.application.routes.draw do
  devise_for :admins
	resources :books


  get "static_pages/about"
  root "books#index"

end
