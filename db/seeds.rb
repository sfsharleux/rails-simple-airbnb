# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do
  name = Faker::BossaNova.song
  address = Faker::Address.full_address
  description = Faker::Quote.yoda
  price_per_night = rand(1..500)
  number_of_guests = rand(1..10)

  Flat.create!(
    name: name,
    address: address,
    description: description,
    price_per_night: price_per_night,
    number_of_guests: number_of_guests
  )
end
