class ExpenseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :price, :date
end
