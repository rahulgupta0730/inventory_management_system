

products = Product.all
if products.blank?
  60.times do |i|
    if i < 8
      sku_code = "SKUPRO0"+(i+1).to_s
    else
      sku_code = "SKUPRO"+(i+1).to_s
    end
    Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price , sku_code: sku_code)
  end
end

warehouse = Warehouse.all
if warehouse.blank?
  Warehouse.create(name: "ware house 1", max_capacity: 20  , city: "Mumbai" , pincode: "400017")
  Warehouse.create(name: "ware house 2", max_capacity: 30  , city: "Bangalore" , pincode: "400018")
  Warehouse.create(name: "ware house 3", max_capacity: 40  , city: "Delhi" , pincode: "400019")
end 








