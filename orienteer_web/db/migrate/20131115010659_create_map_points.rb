class CreateMapPoints < ActiveRecord::Migration
  def change
    create_table :map_points do |t|
      t.integer :map_id
      t.integer :checkpoint
      t.decimal :latitude
      t.decimal :longitude
      t.integer :value

      t.timestamps
    end
  end
end
