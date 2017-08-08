
# == Schema Information
#
# Table name: shoes
#
#  id           :integer          not null, primary key
#  model        :string           not null
#  isbn         :string           not null
#  sku          :string           not null
#  release_year :integer          not null
#  edition_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  image        :string
#  brand_id     :integer
#
# Indexes
#
#  index_shoes_on_brand_id            (brand_id)
#  index_shoes_on_isbn                (isbn) UNIQUE
#  index_shoes_on_model_and_brand_id  (model,brand_id) UNIQUE
#  index_shoes_on_sku                 (sku) UNIQUE
#

require 'ffaker'

FactoryGirl.define do
  factory :shoe do
    model { FFaker::Product.model }
    isbn  { FFaker::Book.isbn }
    sku   { "#{model}-#{isbn}" }
    release_year {1971}
    edition_date { Date.current }
    image { 'cartoon-shoes.jpg' }
    brand
  end
end
