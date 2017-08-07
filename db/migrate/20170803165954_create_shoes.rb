class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.string :model, null: false
      t.string :brand
      t.string :isbn, null: false
      t.string :sku, null: false
      t.integer :release_year, null: false
      t.date :edition_date

      t.timestamps
    end
  end
end
