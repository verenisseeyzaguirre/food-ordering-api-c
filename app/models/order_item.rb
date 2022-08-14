class OrderItem < ApplicationRecord
  belongs_to :order
  has_many :meals, dependent: :destroy

end
