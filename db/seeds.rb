# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

Restaurant.destroy_all

puts "Creating users"
user = User.create(email: 'dion@lewagon.com', password: 123456)
user_two = User.create(email: 'wiebke@lewagon.com', password: 123456)

puts "Creating Restaurants"

restaurant = Restaurant.create(name:"Balan Deli", address:"Balan Strasse", user: user )
restaurant_two = Restaurant.create(name:"nineOFive", address:"Munich", user: user_two )
