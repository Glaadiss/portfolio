Rails.application.routes.draw do

  
  root 'apps#index'
  devise_for :users
  resources :apps do
    resources :reviews
  end
  post '/mail', to: 'apps#mail'

end
