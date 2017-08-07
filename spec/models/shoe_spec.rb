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

require 'rails_helper'

RSpec.describe Shoe, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
