class WorkoutsController < ApplicationController

  def show
    @workouts = Workout.where(:workout_type => params[:id]).order(created_at: :desc)
  end
end
