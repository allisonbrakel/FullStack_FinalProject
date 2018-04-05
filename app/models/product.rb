class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :image_url, ImageUploader

  has_many :product_orders
  has_many :orders, through: :product_orders
end
