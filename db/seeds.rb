# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
grocery = Category.create(name: 'grocery')

Expense.create([
    {name: 'Target', description: 'Bought milk and cereal', date: '2020-08-26', price: 7.25, category: grocery}
])
