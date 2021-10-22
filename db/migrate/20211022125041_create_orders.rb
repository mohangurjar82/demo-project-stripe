class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :product_name
      t.float :amount
      t.string :product_type

      t.timestamps
    end
  end
end
