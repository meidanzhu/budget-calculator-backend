class BudgetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :amount, :category_id, :id
end