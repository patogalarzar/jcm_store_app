class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :stores
  validates :name, :color, :size, :price, presence: true
end
