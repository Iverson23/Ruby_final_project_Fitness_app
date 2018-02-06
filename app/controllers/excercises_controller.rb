class ExcercisesController < ApplicationController

  def show
    @excercises = Excercise.where(:muscle_group => params[:id])
  end

  def create
    Excercise.create(ex_params)
    picture = params[:excercise][:picture]
    File.open(Rails.root.join('public', 'images', 'excercises', ex_params[:muscle_group], "#{ex_params[:title]}.jpg"), 'wb') do |file|
      file.write(picture.read)
    end
    redirect_to "/excercises/#{ex_params[:muscle_group]}"
  end

  private

  def ex_params
    params.require(:excercise).permit(:muscle_group, :title, :description)
  end
end
