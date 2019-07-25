Rails.application.routes.draw do
  root "boxes#index"

  resources :destinations
  resources :items
  resources :boxes
  resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
