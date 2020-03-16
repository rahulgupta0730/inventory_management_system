class CreateWarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses do |t|
      t.string :wh_code
      t.string :name
      t.string :pincode
      t.string :city
      t.integer :max_capacity
      t.timestamps
    end
  end
end
