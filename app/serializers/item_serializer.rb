class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :price, :name, :category_id, :id
end