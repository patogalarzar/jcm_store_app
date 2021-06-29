class Store < ApplicationRecord
  has_and_belongs_to_many :products
  validates :name, :street, :number, :city, :country, :zip_code, presence: true
end
