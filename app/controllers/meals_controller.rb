class MealsController < ApplicationController

  def show
    @meals = Meal.where(:meal_type => params[:id])
  end

  def create
    Meal.create(meal_params)
    picture = params[:meal][:picture]
    File.open(Rails.root.join('public', 'images', 'meals', meal_params[:meal_type], "#{meal_params[:title]}.jpg"), 'wb') do |file|
      file.write(picture.read)
    end
    redirect_to "/meals/#{meal_params[:meal_type]}"
  end

  private

  def meal_params
    params.require(:meal).permit(:meal_type, :title, :description, :calories, :proteins, :carbs, :fats, :prep_time, :ingredients)
  end
end