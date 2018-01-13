class CreateLocationUpdatesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :location_updates do |t|
      t.timestamps
      t.st_point :latlon

      t.index :latlon, using: :gist
    end
  end
end
