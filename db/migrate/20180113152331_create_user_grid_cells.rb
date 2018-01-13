class CreateUserGridCells < ActiveRecord::Migration[5.1]
  def change
    create_table :user_grid_cells do |t|
      t.timestamps

      t.integer :grid_cell_id, foreign_key: true
      t.boolean :visited, default: false
    end
  end
end
