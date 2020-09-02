# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
expense = Category.create(name: 'expense')
income = Category.create(name: 'income')

Budget.create([
    {description: 'Bought milk and cereal', amount: 7.25, category: expense},
    {description: 'Work 40 hours per week', amount: 600, category: income},
    {description: 'Medical Bill', amount: 300, category: expense},
    {description: 'Saving money', amount: 520, category: income}
])
