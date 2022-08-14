class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :table
      t.integer :user
      t.integer :totalAmount

      t.timestamps
    end
  end
end
