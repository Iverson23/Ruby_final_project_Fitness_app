class Workout < ApplicationRecord
  ratyrate_rateable 'workout'
  has_many :workout_compositions
  has_many :excercises, through: :workout_compositions

  def thumbnail
    "/images/workouts/#{title}.jpg"
  end
end
