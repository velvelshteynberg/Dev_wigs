Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "photos#index"
  resources :clients, only:[:new, :create]
  resources :photos, only:[:index]
  resources :consultations, only:[:new, :create]
  resource :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :reviews, only: [:new, :create, :index, :destroy, :update] do 
  #nest the approvals route to reviews
      resources :approvals, only: [:new, :create]
  end 
  
end
