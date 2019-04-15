Rails.application.routes.draw do
  root to: "welcome#index"

  get '/register', to: redirect('/auth/google_oauth2'), as: 'register'

  
  resources :users, only: [:show]

end
