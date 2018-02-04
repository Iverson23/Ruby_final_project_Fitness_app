class ExcercisesController < ApplicationController

  def show
    @excercises = Excercise.where(:muscle_group => params[:id])
  end
end
