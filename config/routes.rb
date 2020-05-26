Rails.application.routes.draw do
  root to: 'recruitments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recruitments

  get 'search', to: 'recruitments#search'
end
