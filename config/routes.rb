Rails.application.routes.draw do
  get 'welcome/index'
  # get 'planets/new'

  resources :planets

  root 'planets#index'
end
