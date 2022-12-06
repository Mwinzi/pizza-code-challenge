puts "Seeding database..."

Restaurant.create(name: "Pizza Hut", address: "123 Main St")
Restaurant.create(name: "Domino's", address: "456 Main St")

Pizza.create(name: "Pepperoni", ingredients: "Pepperoni, Cheese, Sauce")
Pizza.create(name: "Cheese", ingredients: "Cheese, Sauce")
Pizza.create(name: "Veggie", ingredients: "Cheese, Sauce, Veggies")

RestaurantPizza.create(price: 10, pizza_id: 1, restaurant_id: 3)
RestaurantPizza.create(price: 12, pizza_id: 2, restaurant_id: 1)
RestaurantPizza.create(price: 14, pizza_id: 3, restaurant_id: 2)

puts "Done seeding!"