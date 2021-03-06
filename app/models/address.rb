class Address < ApplicationRecord
  belongs_to :customer
  belongs_to :province
  has_many :customers, dependent: :destroy

  validates :address, :city, :postalcode, presence: true
  validates :postalcode, uniqueness: true, length: { minimum: 6 }
end
