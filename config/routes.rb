Rails.application.routes.draw do

  root 'babies#index'
  
  resources :breastfeedings
  resources :babies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end