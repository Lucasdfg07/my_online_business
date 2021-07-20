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

  resources '/meu-publico', to: "my_public#index", as: 'my_public'
  resources '/idade-do-publico', to: "my_public#age", as: 'age_my_public'
  resources '/analise-final', to: "my_public#final", as: 'final_my_public'

  resources '/guia-inicial', to: "initial_guide#index", as: 'initial_guide'
  resources '/sobre-a-internet', to: "initial_guide#about_internet", as: 'about_internet'
  resources '/redes-sociais', to: "initial_guide#about_social_media", as: 'about_social_media'
  resources '/facebook', to: "initial_guide#facebook", as: 'facebook'
  resources '/instagram', to: "initial_guide#instagram", as: 'instagram'
  resources '/youtube', to: "initial_guide#youtube", as: 'youtube'
  resources '/linkedin', to: "initial_guide#linkedin", as: 'linkedin'

  resources '/investimento-inicial', to: "initial_investment#index", as: 'initial_investment'

  resources :social_networks, only: [:create]
end
