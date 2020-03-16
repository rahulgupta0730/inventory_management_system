class Product < ApplicationRecord
  has_many :productthresholds
  has_many :warehouses,  through: :productthresholds
end
