Rails.application.routes.draw do
  devise_for :admins
  root to: 'takes#index'

  resources :takes, only:[:new,:create,:index,:edit,:update,:destroy] do
   resources :orders, only:[:new, :create, :update]
  end

end
