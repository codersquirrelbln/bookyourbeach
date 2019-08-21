# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beach.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?



beaches_photo = ["https://img1.10bestmedia.com/Images/Photos/352450/GettyImages-913753556_54_990x660.jpg", "https://www.telegraph.co.uk/content/dam/travel/Spark/brittany-ferries/blue-sky-white-sand-paling-fence-quiberon-beach-brittany.jpg", "https://www.travellers-autobarn.co.nz/wp-content/uploads/2018/01/shutterstock_166467350-1.jpg", "https://www.telegraph.co.uk/content/dam/travel/Spark/brittany-ferries/dinard-beach.jpg", "https://www.telegraph.co.uk/content/dam/travel/Spark/brittany-ferries/hillside-dwellings-and-trees-shoreline-morgat-beach-brittany.jpg",
  "https://media.cntraveler.com/photos/5c5dfe5de243ea4a765e8082/master/w_820,c_limit/Moorea_GettyImages-574066967.jpg", "https://media.cntraveler.com/photos/5c5dfb6e5ac5fd121f437390/master/w_820,c_limit/English-Harbour_GettyImages-148072230.jpg", "https://media.cntraveler.com/photos/58ac9e5fa5afa42363c01c4b/master/w_820,c_limit/palm-beach-arubaGettyImages-474428679.jpg", "https://media.cntraveler.com/photos/5c5dfc2de243ea4a765e807e/master/w_820,c_limit/Hilton-Head-Island_GettyImages-112232582.jpg", "https://france3-regions.francetvinfo.fr/bretagne/sites/regions_france3/files/styles/top_big/public/assets/images/2018/07/10/crtb-ad3151_berthier-emmanuel-3756105.jpg?itok=w15ai_jN"]
require "faker"

counter = 0

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
    photo: beaches_photo[counter],
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    rent_per_day: Faker::Number.within(range: 5000..20000),
    user: user
 )
  counter += 1
  end
end

puts "Successful seeding of test users."
puts "Seeding initiated. Populating the database with new beaches"





