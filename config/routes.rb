Rails.application.routes.draw do
  get 'tabata/about'

  get 'tabata/timer'

  get 'workouts/fullbody'

  get 'workouts/split'

  get 'workouts/cardio'

  get 'workouts/crossfit'

  get 'meals/breakfast'

  get 'meals/lunch'

  get 'meals/snack'

  get 'meals/dinner'

  get 'diets/reducing'

  get 'diets/bulking'

  get 'excercises/legs'

  get 'excercises/chest'

  get 'excercises/abs'

  get 'excercises/back'

  get 'excercises/biceps'

  get 'excercises/triceps'

  get 'excercises/shoulders'

  root 'home#index'
  get '/about' => 'home#about'

end
