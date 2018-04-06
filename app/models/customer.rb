class Customer < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :first_name, :last_name, :credit_card, :security_code, presence: true
  validates :credit_card, length: { minimum: 8 }
  validates :security_code, length: { minimum: 3 }
end
