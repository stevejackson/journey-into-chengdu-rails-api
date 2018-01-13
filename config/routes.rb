Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :grid_cells, only: [:index]
  resources :location_updates, only: [:create]
end
