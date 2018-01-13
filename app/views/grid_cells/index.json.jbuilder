json.array! @grid_cells do |grid_cell|
  json.id grid_cell.id
  json.longitude grid_cell.lonlat.longitude
  json.latitude grid_cell.lonlat.latitude
end
