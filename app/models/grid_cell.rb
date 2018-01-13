class GridCell < ApplicationRecord
  GRID_CELL_COVERAGE_RADIUS = 50 # unit: meters
  validates :lonlat, presence: true

  def self.mark_grid_cells_as_visited_by_user(longitude, latitude)
    # we're treating the origin of a grid cell as the "center" of the square,
    # and check coverage of it by a radius (which is a circle). it's certainly
    # not optimal, just a quick hack.
    visited_grid_cells = self.where(
      "ST_DWithin(grid_cells.lonlat, ST_GeographyFromText('SRID=4326;POINT(:lon :lat)'), :distance)",
      lon: longitude,
      lat: latitude,
      distance: GRID_CELL_COVERAGE_RADIUS
    )

    puts "Found #{visited_grid_cells.length} grid cells to mark as visited"

    visited_grid_cells.each do |grid_cell|
      # TODO: this should be limited by user, once users are implemented.
      puts grid_cell.id
      user_grid_cell = UserGridCell.find_or_initialize_by(grid_cell_id: grid_cell.id)
      user_grid_cell.visited = true
      user_grid_cell.save!
    end
  end
end
