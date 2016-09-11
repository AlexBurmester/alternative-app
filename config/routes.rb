Rails.application.routes.draw do
  devise_for :admins
	resources :books, :only => [:index, :show]


  get "static_pages/about"
  root "books#index"

end
