Rails.application.routes.draw do
  devise_for :users
  resources :workouts
  resources :excercises
  resources :answers
  resources :questions

  root 'home#index'

  get '/about' => 'home#about'
  get '/bmi' => 'bmi#index'
  get '/news/:id' => 'home#show'
  post '/bmi/calculate' => 'bmi#calculate'
end
