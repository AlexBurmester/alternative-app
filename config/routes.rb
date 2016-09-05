Rails.application.routes.draw do
	resources :books, :only => [:index, :show]


  get "static_pages/about"
  root "books#index"

end
