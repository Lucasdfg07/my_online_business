Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root "home#index"
  get '/generate-certificate', to: "home#export_pdf", as: 'export_pdf_home'

  get '/saiba-como', to: "knowing_how#index", as: 'knowing_how'
  get '/tipo-de-negocio', to: "business_type#index", as: 'business_type'
  get '/website-do-negocio', to: "has_website#index", as: 'has_website'

  get '/meu-publico', to: "my_public#index", as: 'my_public'
  get '/idade-do-publico', to: "my_public#age", as: 'age_my_public'
  get '/analise-final', to: "my_public#final", as: 'final_my_public'

  get '/guia-inicial', to: "initial_guide#index", as: 'initial_guide'
  get '/sobre-a-internet', to: "initial_guide#about_internet", as: 'about_internet'
  get '/redes-sociais', to: "initial_guide#about_social_media", as: 'about_social_media'
  get '/facebook', to: "initial_guide#facebook", as: 'facebook'
  get '/instagram', to: "initial_guide#instagram", as: 'instagram'
  get '/youtube', to: "initial_guide#youtube", as: 'youtube'
  get '/linkedin', to: "initial_guide#linkedin", as: 'linkedin'

  get '/investimento-inicial', to: "initial_investment#index", as: 'initial_investment'

  get '/google-meu-negocio', to: "business_on_google#index", as: 'business_on_google'

  resources :social_networks, only: [:create]
end
