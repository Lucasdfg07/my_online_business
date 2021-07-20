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
end
