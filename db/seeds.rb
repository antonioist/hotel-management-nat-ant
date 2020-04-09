# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Obliterating starlight hotel "
# BookingItem.destroy_all
# BookingAmenity.destroy_all
Amenity.destroy_all
MenuItem.destroy_all
Client.destroy_all
Booking.destroy_all
Room.destroy_all
RoomCategory.destroy_all
Worker.destroy_all
User.destroy_all
Hotel.destroy_all

puts "everything was destroyed succesfully"

puts "creating amazing hotels"

nataliathechampion = Hotel.create!(
  name: "Nataliatc",
  address: "Tokyo",
  phone_number: "12345678",
  email: "nataliathechampion@gmail.com"
)


antoniotheking = Hotel.create!(
  name: "Antoniotk",
  address: "Meguro",
  phone_number: "12345678",
  email: "antoniotheking@gmail.com"
)

rin = Hotel.create!(
  name: "Rin",
  address: "Shibuya",
  phone_number: "12345678",
  email: "antoniotheking@gmail.com"
)

ran = Hotel.create!(
  name: "Ran",
  address: "Ebisu",
  phone_number: "12345678",
  email: "antoniotheking@gmail.com"
)

run = Hotel.create!(
  name: "Run",
  address: "Shinjuku",
  phone_number: "12345678",
  email: "antoniotheking@gmail.com"
)

puts "hotels done"

puts "creating room categories"

vip = RoomCategory.create!(
  category: "VIP",
  price: 5000
)

single = RoomCategory.create!(
  category: "SINGLE",
  price: 2000
)

double = RoomCategory.create!(
  category: "DOUBLE",
  price: 3000
)

puts "room categories done"

puts "creating rooms"

onev = Room.create!(
  number: 1,
  room_category: vip,
  hotel: nataliathechampion
)

ones = Room.create!(
  number: 2,
  room_category: single,
  hotel: nataliathechampion
)

oned = Room.create!(
  number: 3,
  room_category: double,
  hotel: nataliathechampion
)

twov = Room.create!(
  number: 4,
  room_category: vip,
  hotel: antoniotheking
)

twos = Room.create!(
  number: 5,
  room_category: single,
  hotel: antoniotheking
)

twod = Room.create!(
  number: 6,
  room_category: double,
  hotel: antoniotheking
)

threv = Room.create!(
  number: 7,
  room_category: vip,
  hotel: antoniotheking
)

threvv = Room.create!(
  number: 10,
  room_category: vip,
  hotel: antoniotheking
)

threvvv = Room.create!(
  number: 11,
  room_category: vip,
  hotel: antoniotheking
)

threvvvv = Room.create!(
  number: 12,
  room_category: vip,
  hotel: antoniotheking
)

fourd = Room.create!(
  number: 8,
  room_category: double,
  hotel: antoniotheking
)

fifth = Room.create!(
  number: 9,
  room_category: single,
  hotel: antoniotheking
)

puts "rooms done"

puts "creating amenities"

caipirinha = Amenity.create!(
  drink: "Caipirinha"
)

cubalibre = Amenity.create!(
  drink: "Cubalibre"
)

piscosour = Amenity.create!(
  drink: "Piscosour"
)

puts "amenities done"

puts "creating menu items"

coke = MenuItem.create!(
  name: "coke",
  price: 500,
  category: "DRINK"
)

tea = MenuItem.create!(
  name: "tea",
  price: 600,
  category: "DRINK"
)

french_fries = MenuItem.create!(
  name: "french fries",
  price: 1000,
  category: "FOOD"
)

caesar_salad = MenuItem.create!(
  name: "caesar_salad",
  price: 200,
  category: "FOOD"
)

puts "menu items done"


puts "creating workers"

naomi = Worker.create!(
  first_name: "Naomi",
  last_name: "Takahara",
  hotel: nataliathechampion
)

isidoro = Worker.create!(
  first_name: "Isidoro",
  last_name: "Trespalacios",
  hotel: nataliathechampion
)

maria = Worker.create!(
  first_name: "Maria",
  last_name: "Santos",
  hotel: antoniotheking
)

felipe = Worker.create!(
  first_name: "Felipe",
  last_name: "Caradura",
  hotel: antoniotheking
)

puts "workers finished"

puts "creating Users"

natalia = User.create!(
  first_name: "Natalia",
  last_name: "Takahara",
  email: "natalia@lewagon.com",
  password: "123123",
  hotel: nataliathechampion,
  supervisor_role: true
)

antonio = User.create!(
  first_name: "Antonio",
  last_name: "Sanchez",
  email: "antonio@lewagon.com",
  password: "123123",
  hotel: antoniotheking,
  superadmin_role: true
)

chikaka = User.create!(
  first_name: "chikaka",
  last_name: "chikoko",
  email: "chikaka@lewagon.com",
  password: "123123",
  hotel: antoniotheking,
  user_role: true
)

biscuit = User.create!(
  first_name: "biscuit",
  last_name: "bisketo",
  email: "biscuit@lewagon.com",
  password: "123123",
  hotel: antoniotheking,
  user_role: true
)

puts "users done"
