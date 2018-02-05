class Meal < ApplicationRecord
  ratyrate_rateable 'meal'
  def thumbnail
    "/images/meals/#{meal_type}/#{title}.jpg"
  end
end
