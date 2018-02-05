class MealsController < ApplicationController

  def show
    @meals = Meal.where(:meal_type => params[:id])
  end
end
