class Item < ApplicationRecord
  belongs_to :category
  has_many :purchases

  has_one_attached :header_image
  
  has_many :sales
  has_many :customers, through: :sales

  validates :name, uniqueness: true, presence: true
  validates :cost_price, numericality: { greater_than: 0 }
  validates :selling_price, numericality: { greater_than: :cost_price }
end
