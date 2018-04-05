class Province < ApplicationRecord
  has_many :addresses, dependent: :destroy

  validates :province_code, presence: true
  validates :gst, :pst, :hst, numericality: true
end
