class ThresholdController < ApplicationController
  before_action :set_threshold, only: [:edit, :update]

  def edit
  end

  def update
    if !params[:warehouse].blank?
      params[:warehouse].each do |key,value|
        @productthresholds.each do |productthreshold|
          if productthreshold.id.to_s == key
            productthreshold.count = value[:count]
            productthreshold.threshold = value[:threshold]
            productthreshold.save
          end
        end
      end
      redirect_to "/", flash: {success: "Warehouse setting changes successfully"}
    end
  end

  private
    def set_threshold
      @productthresholds = Productthreshold.where(:product_id => params[:id])
    end
end
