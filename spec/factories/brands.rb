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

FactoryGirl.define do
  factory :brand do
    name { %w[Nike Adiddas Converse Prada Arena Azzura Gronchi][rand(0..3)] }
  end
end
