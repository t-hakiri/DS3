Rails.application.routes.draw do
  root to: 'recruitments#index'

  resources :recruitments

end
