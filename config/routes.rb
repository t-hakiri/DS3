Rails.application.routes.draw do
  root to: 'recruitments#index'

  resources :recruitments, only: %i!index new create!
  resources :popular_areas
end
