CookBook::Application.routes.draw do

  resources :users, :sessions

  root to: 'site#index'

  get 'signin' => 'sessions#new', as: :signin

  delete 'signout' => 'sessions#destroy', as: :signout

  get 'signup' => 'users#new', as: :signup

end