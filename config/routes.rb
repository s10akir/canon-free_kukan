Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'terminal#index'
  get '/terminal', to: 'terminal#index'
  post '/terminal/login', to: 'terminal#login'
end
