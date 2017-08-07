class RemoveBrandFromShoe < ActiveRecord::Migration[5.1]
  def change
    if Rails.env.production? && Shoe.any?
      say_with_time 'save existing brands for sensitive client data ' do
        Shoe.where.not(brand: nil).distinct.find_each do |shoe|
          say "marca: #{shoe.brand} ha sido creada"
          Brand.create(name: shoe.brand)
        end
      end
      say 'Existing brands before the change in model saved in new model'
    end
    remove_column :shoes, :brand, :string
  end
end
