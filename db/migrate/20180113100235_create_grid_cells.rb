class CreateGridCells < ActiveRecord::Migration[5.1]
  def change
    create_table :grid_cells do |t|
      t.st_point :lonlat, geographic: true

      t.timestamps
    end
  end
end
