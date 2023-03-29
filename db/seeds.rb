# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create some Indian restaurants
restaurant1 = Restaurant.create(name: "Taj Mahal", location: "345 Oak Street", restaurant_type: "Indian", multi_locations: true)
restaurant2 = Restaurant.create(name: "Spice Kitchen", location: "789 Main Street", restaurant_type: "Indian", multi_locations: false)

# Create some categories for each restaurant
category1 = Category.create(name: "Appetizers", restaurant: restaurant1)
category2 = Category.create(name: "Entrees", restaurant: restaurant1)
category3 = Category.create(name: "Beverages", restaurant: restaurant2)
category4 = Category.create(name: "Desserts", restaurant: restaurant2)

# Create some products for each category and restaurant
product1 = Product.create(name: "Samosas", price: 5.99, restaurant: restaurant1, category: category1)
product2 = Product.create(name: "Chicken Tikka Masala", price: 14.99, restaurant: restaurant1, category: category2)
product3 = Product.create(name: "Mango Lassi", price: 3.99, restaurant: restaurant2, category: category3)
product4 = Product.create(name: "Gulab Jamun", price: 6.99, restaurant: restaurant2, category: category4)


# create some links
link1 = Link.create(platform: "Zomato", url: "https://www.zomato.com/mumbai/taj-mahal-restaurant-apollo-bunder", last_changed_on: Date.today, restaurant: restaurant1)
link2 = Link.create(platform: "TripAdvisor", url: "https://www.tripadvisor.com/Restaurant_Review-g304551-d738940-Reviews-Bukhara-New_Delhi_National_Capital_Territory_of_Delhi.html", last_changed_on: Date.today, restaurant: restaurant2)
