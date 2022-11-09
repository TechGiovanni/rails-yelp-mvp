category = %w[chinese italian japanese french belgian]
5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: category.sample
  )
  puts "restaurant #{restaurant.id} was created"
end

puts 'all done'
