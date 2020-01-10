Rails.application.routes.draw do
  get 'welcome/index'

  resources :planets

  root 'welcome#index'
end
