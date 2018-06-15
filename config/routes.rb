Rails.application.routes.draw do
  root "meets#index"
  resources :meets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
