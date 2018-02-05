class Excercise < ApplicationRecord
  has_many :workout_compositions
  has_many :workouts, through: :workout_compositions

  def thumbnail
    "/images/excercises/#{muscle_group}/#{title}.jpg"
  end
end
