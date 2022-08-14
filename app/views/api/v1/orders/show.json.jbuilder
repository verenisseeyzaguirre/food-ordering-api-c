json.extract! @order, :id, :table, :user
json.order_items @order.order_items do |order_item|
  json.extract! order_item, :id, :meal_id, :quantity
end
json.extract! @order, :status, :totalAmount