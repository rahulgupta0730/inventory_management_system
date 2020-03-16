module DashboardHelper
  def below_threshold(productthreshold_id)
    productthreshold =  Productthreshold.find(productthreshold_id)
    if productthreshold.warehouse.city == "Mumbai"
      productthreshold.count >= productthreshold.threshold ? false : true 
    elsif productthreshold.warehouse.city == "Bangalore"
      puts productthreshold.threshold/3
      productthreshold.count >= (productthreshold.threshold/3) ? false : true 
    elsif productthreshold.warehouse.city == "Delhi"
      productthreshold.count >= (productthreshold.threshold/2) ? false : true 
    end
  end
end
 