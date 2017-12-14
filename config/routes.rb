Rails.application.routes.draw do

  resources :promos
  resources :categories
	root to: 'promos#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
