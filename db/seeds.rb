BOTTOM_LATITUDE = 30.575614
TOP_LATITUDE = 30.624817
LATITUDE_GRID_INTERVAL = 0.003069

LEFT_LONGITUDE = 104.055387
RIGHT_LONGITUDE = 104.099075
LONGITUDE_GRID_INTERVAL = 0.003169

def create_grid_cells
  (BOTTOM_LATITUDE..TOP_LATITUDE).step(LATITUDE_GRID_INTERVAL) do |latitude|
    (LEFT_LONGITUDE..RIGHT_LONGITUDE).step(LONGITUDE_GRID_INTERVAL) do |longitude|
      point = "POINT(#{longitude} #{latitude})"
      puts point.inspect
      GridCell.create!(lonlat: point)
    end
  end
end

if GridCell.count.zero?
  create_grid_cells
end

