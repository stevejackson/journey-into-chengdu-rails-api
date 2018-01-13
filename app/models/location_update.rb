class LocationUpdate < ApplicationRecord
  validates :latlon, presence: true
end
