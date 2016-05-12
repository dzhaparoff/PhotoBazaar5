class BestPhotoOfTheDay < ApplicationRecord
  belongs_to :photo, inverse_of: :best_photo_of_the_day
end
