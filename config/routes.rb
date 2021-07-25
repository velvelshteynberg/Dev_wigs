Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "photos#about_us"

  post "/client_generator", to:"clients#client_generator", as: 'client_generator'

  resources :clients, only:[:create] do 
    resources :consultations, only:[:new, :create]
    resources :reviews, only:[:new, :create]
  end 
  
  resources :photos, only:[:index, :about_us]
 
  resource :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :reviews, only: [:index, :destroy, :update] do 
  #nest the approvals route to reviews
      resource :approvals, only: [:create]
  end 
  
  resources :consultations, only: [:index, :destroy, :update] do 
    resource :approvals, only: [:update]
  end 
  
end
