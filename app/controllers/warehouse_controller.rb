class WarehouseController < ApplicationController
  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    if @warehouse.save
      redirect_to "/", flash: {success:'Warehouse was successfully created.' }
    else
      render :new
    end
  end

  def warehouse_params
    params.require(:warehouse).permit(:name, :pincode , :max_capacity , :city)
  end
end
