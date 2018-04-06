class Page < ApplicationRecord
  validates :content, :title, presence: true
end
