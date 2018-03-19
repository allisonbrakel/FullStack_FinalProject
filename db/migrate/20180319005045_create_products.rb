class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :album_name
      t.string :artist_name
      t.float :price
      t.string :image_url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
