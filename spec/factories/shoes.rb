# == Schema Information
#
# Table name: shoes
#
#  id           :integer          not null, primary key
#  model        :string
#  isbn         :string
#  sku          :string
#  release_year :integer
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

