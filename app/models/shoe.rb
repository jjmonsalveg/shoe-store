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
class Shoe < ApplicationRecord
  validates :model, presence: true
  validates :sku, presence: true, uniqueness: true
  validates_numericality_of :release_year, :greater_than_or_equal_to => 1900
  validates :release_year, presence: true
  validates_uniqueness_of :model, scope: :brand_id
  validates :isbn, presence: true, uniqueness: true


  mount_uploader :image, ImageUploader
  attr_accessor :image_cache

  belongs_to :brand, optional: true
end
