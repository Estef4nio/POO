Rails.application.routes.draw do
  resources :coordenadors
  resources :atividades
  resources :modalidades
  resources :estudantes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
