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

puts 'finished'
