class AddBrandRefToShoes < ActiveRecord::Migration[5.1]
  def change
    add_reference :shoes, :brand, foreign_key: true, null: false
    add_index     :shoes, [:model , :brand_id], unique: true
    add_index     :shoes, :isbn, unique: true
    add_index     :shoes, :sku, unique: true
  end
end
