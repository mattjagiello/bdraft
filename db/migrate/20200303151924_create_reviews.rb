class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating, :default => 0
      t.boolean :tracked, :default => false
      t.integer :user_id
      t.integer :beer_id

      t.timestamps
    end
  end
end
