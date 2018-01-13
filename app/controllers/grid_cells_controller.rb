class GridCellsController < ApplicationController
  def index
    @grid_cells = GridCell.all
  end
end
