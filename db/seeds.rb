# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Obliterating hotel heaven"
# Booking_item.destroy_all
# Booking_amenity.destroy_all
# Amenity.destroy_all
# Menu_item.destroy_all
# Client.destroy_all
# Booking.destroy_all
# Room.destroy_all
# Room_category.destroy_all
# Worker.destroy_all
Hotel.destroy_all
User.destroy_all

puts "everything was destroyed succesfully"
puts "creating amazing hotels"


nataliathechampion = Hotel.create!(
  name: "Nataliathechampion",
  address: "123 natalia's house",
  phone_number: "12345678",
  email: "nataliathechampion@gmail.com"
)


antoniotheking = Hotel.create!(
  name: "Antoniotheking",
  address: "123 antonio's house",
  phone_number: "12345678",
  email: "antoniotheking@gmail.com"
)

puts "hotels done"

puts "creating Users"

natalia = User.create!(
  first_name: "Natalia",
  last_name: "Takahara",
  email: "natalia@lewagon.com",
  password: "123123",
  hotel: nataliathechampion
)

antonio = User.create!(
  first_name: "Antonio",
  last_name: "Sanchez",
  email: "antonio@lewagon.com",
  password: "123123",
  hotel: antoniotheking
)

puts "users done"
