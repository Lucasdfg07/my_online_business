Rails.application.routes.draw do
  root "home#index"

  resources '/saiba-como', to: "knowing_how#index", as: 'knowing_how'
  resources '/tipo-de-negocio', to: "business_type#index", as: 'business_type'
end
