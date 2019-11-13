require 'faker'

Restaurant.destroy_all

CATEGORIES = %w(chinese italian japanese french belgian)

puts "creating restaurants..."
20.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    category: CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.full_address
  )
end

puts "restaurants created!"
