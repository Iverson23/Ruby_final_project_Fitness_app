Rails.application.routes.draw do
  resources :workouts
  resources :excercises
  resources :answers
  resources :questions

  root 'home#index'

  get '/about' => 'home#about'
end
