class Meal < ApplicationRecord

  def thumbnail
    "/images/meals/#{meal_type}/#{title}.jpg"
  end
end
