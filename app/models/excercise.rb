class Excercise < ApplicationRecord

  has_and_belongs_to_many :workouts

  def thumbnail
    "/images/#{muscle_group}/#{title}.jpg"
  end
end
