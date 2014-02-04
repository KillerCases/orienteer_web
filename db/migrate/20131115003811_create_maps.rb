class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :country
      t.string :city
      t.string :name
      t.string :map_url
      t.boolean :is_active

      t.timestamps
    end
  end
end
