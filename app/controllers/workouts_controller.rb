class WorkoutsController < ApplicationController

  def show
    @workouts = Workout.where(:workout_type => params[:id]).order(created_at: :desc)
    @excercises = Excercise.all
  end

  def create
    Workout.create(w_params)
    picture = params[:workout][:picture]

    if picture
      File.open(Rails.root.join('public', 'images', 'workouts', w_params[:workout_type], "#{w_params[:title]}.jpg"), 'wb') do |file|
        file.write(picture.read)
      end
    end

    redirect_to "/workouts/#{w_params[:workout_type]}"
  end

  def add_excercise
    WorkoutComposition.create(comp_params)

    redirect_to "/workouts/#{Workout.find(comp_params[:workout_id]).workout_type}"
  end

  private

  def w_params
    params.require(:workout).permit(:workout_type, :title, :rest, :picture)
  end

  def comp_params
    params.require(:comp).permit( :excercise_id, :workout_id, :sets, :reps)
  end
end
