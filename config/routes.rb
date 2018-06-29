Rails.application.routes.draw do
  resources :webviews
  resources :surveys
  resources :options
  resources :places do
	resources :addresses
  end
  root to: 'places#index'
end
