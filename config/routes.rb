Rails.application.routes.draw do
  root 'home#index'

  namespace :superman do
    get 'movies', to: 'movies#index'
  end

  namespace :batman do
    get 'movies', to: 'movies#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
