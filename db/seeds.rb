# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Restaurant
# name = Faker::Restaurant.name
# address = Faker::Address.street_address
# phone = Faker::PhoneNumber.cell_phone_in_e164
category = ['chinese', 'italian', 'japanese', 'french', 'belgian']

#Review
# content = Faker::Lorem.sentence(word_count: 3)
# rating = rand(0..5)
# restaurant_id = rand(0..10)

puts 'creating restaurants'
10.times do
  restaur = Restaurant.create!({ name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: category.sample })
  puts "creating restaurant #{restaur.name}"
end

# puts "creating reviews"
# 20.times do
#   Review.create(content: Faker::Lorem.sentence(word_count: 6), rating: rand(0..5), restaurant_id)
# end

puts 'finished'
