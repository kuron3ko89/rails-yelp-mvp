# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# if Rails.env.development?
#     puts "Please don't seed data in production, you moron"
#     return
# eneeded
require 'faker'

puts 'Cleaning DB...'
Restaurant.destroy_all

puts "creating restaurants..."

10.times do
    Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address,
        phone_number: Faker::PhoneNumber.phone_number,
        category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
    )
end
puts "done!"