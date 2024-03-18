class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.decimal :quantity
      t.decimal :total_amount
      t.integer :customer_id, null:  false, foreign_key: true
      t.integer :item_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
