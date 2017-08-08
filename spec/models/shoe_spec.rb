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
  before { @shoe = FactoryGirl.build(:shoe) }

  subject { @shoe }


  it { should respond_to(:model) }
  it { should respond_to(:isbn) }
  it { should respond_to(:sku) }
  it { should respond_to(:release_year) }
  it { should respond_to(:brand_id) }
  it { should be_valid }

  it { should belong_to :brand }

  it { should validate_presence_of :model }
  it { should validate_presence_of :isbn  }
  it { should validate_presence_of :sku   }
  it { should validate_presence_of :release_year}
  it { should validate_numericality_of(:release_year).is_greater_than_or_equal_to(1900) }
  it { should validate_uniqueness_of(:model).scoped_to(:brand_id) }
end
