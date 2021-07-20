Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    confirmations: "users/confirmations",
    unlocks: "users/unlocks",
    passwords: "users/passwords"
  }
  
  root "home#index"

  resources '/saiba-como', to: "knowing_how#index", as: 'knowing_how'
  resources '/tipo-de-negocio', to: "business_type#index", as: 'business_type'
end
