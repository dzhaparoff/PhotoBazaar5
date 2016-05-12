module ApplicationHelper
  def best_photo_of_the_day
    # "http://photobazaar.ru/#{BestPhotoOfTheDay.last.photo.thumbnails.url(:compressed)}"
    BestPhotoOfTheDay.last.photo
  end

  def prepend_whitespace text
    " #{text}" if text.present?
  end
end
