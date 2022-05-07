Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#homepage'
  resources :patients
  resources :physicians
  resources :appointments
  resources :industries
  resources :sectors
  get '/page1' ,to:'home#page1'
  get '/page2' ,to:'home#page2'
end
