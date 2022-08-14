json.array! @orders do |order|
  json.extract! order, :id, :table, :user, :status, :totalAmount
end
