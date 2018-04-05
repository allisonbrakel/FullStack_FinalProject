class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :image_url, ImageUploader

  has_many :product_orders, dependent: destroy
  has_many :orders, through: :product_orders

  validates :name, :artist_name, :price, :imageUrl, presence: true
  validates :price, numericality: true
end
