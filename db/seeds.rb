# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Flat.destroy_all
10.times do
  flat = Flat.create!(
    name: Faker::Company.catch_phrase,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 7),
    price_per_night: rand(100..200),
    number_of_guests: rand(1..10)
  )
  flat.save
end
