class CreateProductthresholds < ActiveRecord::Migration[6.0]
  def change
    create_table :productthresholds do |t|
      t.integer :threshold , default: 10
      t.integer :count, default: 0
      t.references :product, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true
      t.timestamps
    end
  end
end
