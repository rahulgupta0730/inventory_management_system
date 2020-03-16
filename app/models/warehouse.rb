class Warehouse < ApplicationRecord
  has_many :productthresholds
  has_many :products,  through: :productthresholds
  validates_presence_of :name ,  :pincode , :max_capacity
  validates :max_capacity, allow_blank: true, numericality: { only_integer: true } , :inclusion => 1..1000
  after_create :update_thershold_count


  def update_thershold_count
    self.wh_code = "wh-"+self.city[0,3].downcase+"-"+self.id.to_s
    self.save
    products = Product.all
    products.each do |product|
      productthreshold = Productthreshold.new()
      productthreshold.product_id = product.id
      productthreshold.warehouse_id = self.id
      productthreshold.save
    end 
  end
end
