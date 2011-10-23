class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :id
      t.string :name
      t.integer :x_coord
      t.integer :y_coord
      t.string :country
      t.string :city
      t.string :street
      t.integer :time
      t.integer :cost
      t.string :tags
      t.text :descr
      t.timestamps
    end
  end
end
