# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beach.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

require "faker"

5.times do |user|
  user = User.new(
    email: Faker::Internet.email,
    password: "login123")
  user.save!

  2.times do |beach|
  random_number = rand(0...5)
  beach = Beach.create(
    name: Faker::Restaurant.name,
    location: Faker::Address.street_address,
    photo: Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'sports', number: 3),
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    rent_per_day: Faker::Number.within(range: 5000..20000),
    user: user
 )
  end
end

puts "Successful seeding of test users."
puts "Seeding initiated. Populating the database with new beaches"





