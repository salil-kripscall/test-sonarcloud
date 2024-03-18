class Customer < ApplicationRecord
  has_many :sales
  has_many :items, through: :sales

  validates :name, presence: true,
  validates :phone_number, presence: true, length: { is: 10 }, uniqueness: true
end
