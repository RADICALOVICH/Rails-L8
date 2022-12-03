Rails.application.routes.draw do
  resources :widgets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'count#input', as: 'home'
  get '/count/result', to: 'count#result'
  get '/count/input', to: 'count#input'
  # Defines the root path route ("/")
  # root "articles#index"
end
