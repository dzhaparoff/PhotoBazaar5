class Category < ApplicationRecord
  has_many :photos
  has_one :seo, as: :resource
end
