class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :keywords, dependent: :destroy
  validates_associated :keywords
  validates :name, presence:true, uniqueness: { case_sensitive: false }
end
