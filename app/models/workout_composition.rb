class WorkoutComposition < ApplicationRecord
  belongs_to :excercise
  belongs_to :workout
end
