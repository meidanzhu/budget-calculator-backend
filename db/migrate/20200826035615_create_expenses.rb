class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :description
      t.float :price
      t.date :date
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
