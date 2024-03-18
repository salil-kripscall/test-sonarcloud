class Purchase < ApplicationRecord
  belongs_to :item
  belongs_to :vendor
  after_save :update_item_quantity

  private
  
  def update_item_quantity
    item.update(quantity: item.quantity + purchase_quantity)
  end
end
