class News < ApplicationRecord

  def thumbnail
    "/images/news/#{title}.jpg"
  end
end
