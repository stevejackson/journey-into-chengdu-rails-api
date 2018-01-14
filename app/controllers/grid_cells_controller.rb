class GridCellsController < ApplicationController
  def index
    @grid_cells = GridCell.all.includes(:visited_user_grid_cells)
  end
end
