class Camera < ApplicationRecord
  has_many :photos
  has_one :seo, as: :resource

  validates :name, uniqueness: { case_sensitive: false }

  before_create :create_camera_code

  private

  def create_camera_code
    code ||= name.parameterize
  end
end
