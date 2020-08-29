class BudgetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :price, :category
end