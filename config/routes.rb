Rails.application.routes.draw do
  devise_for :admins
	
	resources :semesters, only: [:index, :show] do
		resources :books
	end

  get "static_pages/about"
  root "semesters#index"

end
