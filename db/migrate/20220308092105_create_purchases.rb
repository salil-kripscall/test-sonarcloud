class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references :item, foreign_key: true
      t.references :vendor, foreign_key: true
      t.decimal :cost_price
      t.decimal :purchase_quantity
      t.decimal :total_price
      t.timestamps
    end
  end
end
