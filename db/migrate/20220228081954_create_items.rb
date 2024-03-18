class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :cost_price
      t.decimal :selling_price
      t.integer :category_id, null: false, foreign_key: true
      t.decimal :quantity
      t.decimal :ideal_quantity
      t.boolean :status
      t.timestamps
    end
  end
end
