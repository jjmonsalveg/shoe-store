# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_brands_on_name  (name) UNIQUE
#

require 'rails_helper'

RSpec.describe Brand, type: :model do
  before { @brand = FactoryGirl.build(:brand) }

  subject { @brand }

  it { should respond_to(:name) }
  it { should be_valid }


  describe "when name is not present" do
    before { @brand.name = " " }
    it { should_not be_valid }
  end

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }

end
