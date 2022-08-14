class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  
  # Validations
  validates :table, presence: true

  # Callbacks
  before_create :set_status
  before_create :set_total_amount

  private

  def set_status
    self.status = "processing"
  end

  def set_total_amount
    total_a = 0
    
    self.order_items.each do |order_item|
      meal = Meal.find(order_item.meal_id)
      total_a += meal.price * order_item.quantity
    end
    self.totalAmount = total_a
  end

end
