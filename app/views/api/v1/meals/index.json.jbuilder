json.array! @meals do |meal|
  json.extract! meal, :id, :name, :price
end
