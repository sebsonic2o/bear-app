class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price, precision: 8, scale: 2, null: false, default: 0
      t.integer :num_units, null: false, default: 1

      t.references :employee, index: true

      t.timestamps null: false
    end
  end
end
