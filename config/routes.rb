Rails.application.routes.draw do
  resources "surveys", only: [:index, :new, :create]

  get 'home/index'
  root to: 'home#index'
end
