Rails.application.routes.draw do
  devise_for :users
	resources :books
	resources :semesters, only: [:index, :show]

  get "static_pages/about"
  root "semesters#index"

end
