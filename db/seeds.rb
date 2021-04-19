# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
coffee = Category.create(name: "coffee")
tea = Category.create(name: "tea")
refresher = Category.create(name: "refresher")

Item.create([

    {name: "Americano",
    price: 3.75,
    description: "Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance.",
    category: coffee},
  
    {name: "Cappuccino",
    price: 4.25,
    description: "Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam.",
    category: coffee},
  
    {name: "Flat White",
    price: 4.00,
    description: "Smooth ristretto shots of espresso get the perfect amount of steamed whole milk to create a not-too-strong, not-too-creamy, just-right flavor.",
    category: coffee},

    {name: "Oatmilk Latte",
    price: 6.00,
    description: "Enjoy a warm cup of oatmilk steamed for your sipping pleasure.",
    category: coffee},
  
    {name: "Pumpkin Spice Latte",
    price: 6.00,
    description: "We add freshly steamed milk and pumpkin spice syrup to our classic espresso.",
    category: coffee},
  
    {name: "Ice Black Tea",
    price: 4.50,
    description: "Premium black tea is shaken with ice. It's the ideal iced tea—a rich and flavorful black tea journey awaits you.",
    category: tea},

    {name: "Passion Fruit Tea",
    price: 4.75,
    description: "Fruity passion fruit handshaken with ice.",
    category: tea},

    {name: "Peppermint Mocha",
    price: 6.50,
    description: "Our rich, full-bodied espresso combined with bittersweet mocha sauce, peppermint and steamed milk, then topped with sweetened whipped cream.",
    category: coffee},
  
    {name: "Tropical Lemonade",
    price: 6.50,
    description: "Green tea blended with citrus fruits and lemonade, then given a good shake with ice.",
    category: refresher}
    ])
