Rails.application.routes.draw do
  root to: "welcome#index"
  get 'dashboard', to: "users#show"

  # google login/registration routing
  get '/register', to: redirect('/auth/google_oauth2'), as: 'register'
  get '/auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get '/login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
