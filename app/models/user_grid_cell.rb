class UserGridCell < ApplicationRecord
  belongs_to :grid_cell
  validates :grid_cell, presence: true
end
