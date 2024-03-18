class Vendor < ApplicationRecord
  has_many :purchases
  validates :name, uniqueness: true, presence: true
end
