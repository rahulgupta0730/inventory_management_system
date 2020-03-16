class Productthreshold < ApplicationRecord
  belongs_to :product
  belongs_to :warehouse
  validates :count, :numericality => { :greater_than_or_equal_to => 0 }
  validates :threshold, :numericality => { :greater_than_or_equal_to => 0 }
end
