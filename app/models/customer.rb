class Customer < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :username, :password, :first_name, :last_name, presence: true
  validates :username, length: { minimum: 4 }
  validates :password, length: { minimum: 7 }
end
