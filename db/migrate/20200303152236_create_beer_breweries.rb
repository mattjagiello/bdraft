class CreateBeerBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :beer_breweries do |t|
      t.integer :beer_id
      t.integer :brewery_id

      t.timestamps
    end
  end
end
