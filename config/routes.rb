Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root "home#index"

  resources '/saiba-como', to: "knowing_how#index", as: 'knowing_how'
  resources '/tipo-de-negocio', to: "business_type#index", as: 'business_type'
  resources '/website-do-negocio', to: "has_website#index", as: 'has_website'
  resources '/guia-inicial', to: "initial_guide#index", as: 'initial_guide'

  resources :social_networks
end
