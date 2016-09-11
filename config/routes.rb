Rails.application.routes.draw do
  devise_for :admins
	resources :books, :only => [:index, :show, :edit, :update, :new, :create]


  get "static_pages/about"
  root "books#index"

end
