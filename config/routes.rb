Rails.application.routes.draw do
  resources :sushis
  root 'sushis#index'
end
