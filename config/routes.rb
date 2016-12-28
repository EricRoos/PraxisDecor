Rails.application.routes.draw do
  resources :products
  get 'static/home'
  root to: 'static#home'

  resources :products do 
    member do
      get 'order'
      post 'order', to: 'products#process_payment', as: 'process'
    end
    resources :pictures
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
