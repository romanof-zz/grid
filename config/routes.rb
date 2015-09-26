Rails.application.routes.draw do
  # root
  root  'application#index'

  # session
  get 'login' => 'sessions#index'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # authentication
  get 'register/:link' => 'authentications#index'
  post 'register/:link' => 'authentications#create'
end
