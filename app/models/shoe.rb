# == Schema Information
#
# Table name: shoes
#
#  id           :integer          not null, primary key
#  model        :string
#  brand        :string
#  isbn         :string
#  sku          :string
#  release_year :integer
#  edition_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Shoe < ApplicationRecord
  validates :brand , presence: true
end
