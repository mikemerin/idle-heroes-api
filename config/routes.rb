Rails.application.routes.draw do

  resources :stats
  resources :heroes, except: [:delete]
  get 'home', to: 'static#home'

end
