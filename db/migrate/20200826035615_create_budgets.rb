class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.string :description
      t.float :amount
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
