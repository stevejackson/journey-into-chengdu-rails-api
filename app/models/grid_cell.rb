class GridCell < ApplicationRecord
  validates :lonlat, presence: true
end
