class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.float :amount
      t.string :transactionId
      t.string :paymentId
      t.string :currency
      t.string :status

      t.timestamps
    end
  end
end
