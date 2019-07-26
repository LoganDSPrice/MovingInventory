# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Destination.destroy_all
p "All Destinations destroyed"
Destination.create!([
  {room_name: "Bedroom - Front", position: 1},
  {room_name: "Bedroom - Master", position: 2},
  {room_name: "Bedroom - Back", position: 3},
  {room_name: "Living Room", position: 4},
  {room_name: "Dining Room", position: 5},
  {room_name: "Bathroom", position: 6},
  {room_name: "Kitchen", position: 7},
  {room_name: "Porch", position: 8}
])
p "#{Destination.count} Destinations created"
