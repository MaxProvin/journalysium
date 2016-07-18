Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'landing_page#index'

  get 'news' => 'news#index'

  get 'home' => 'home#index'

  resources :preferences

  resources :notes

end
