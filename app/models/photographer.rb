class Photographer < ApplicationRecord
  has_many :photos
  belongs_to :user
  has_one :seo, as: :resource

  validates :username, presence: true, uniqueness: { case_sensitive: false }
end
