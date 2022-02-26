# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# remove all the instances

20.times do
 user = User.new
 user.first_name = Faker::Name.name
 user.last_name = Faker::Name.last_name
 user.email = Faker::Internet.email
 user.password = Faker::Internet.password
 # user.phone_number = Faker::PhoneNumber.cell_phone
 user.save!
end

tate_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1644665936/tate_britain_exterior_1_yyyfwz.jpg')


puts 'Creating places'
tate = Place.create!(
  name: "Tate Modern London",
  description: "Access the latest exhibition",
  address: "Bankside, London SE1 9TG",
  website: "https://www.tate.org.uk",
  phone_number: Faker::PhoneNumber.phone_number
)

tate.photo.attach(io: tate_picture, filename: 'tate.png', content_type: 'image/png')

=======
# 20.times do
#  place = Place.new
#  place.name = Faker::Restaurant.name
#  place.address = Faker::Address.full_address_as_hash(:longitude,
#                                     :latitude,
#                                     :country_name_to_code,
#                                     country_name_to_code: {name: 'united_kingdom'})
#  place.description = Faker::Restaurant.description
#  place.website = Faker::Internet.url
#  place.phone_number = Faker::PhoneNumber.phone_number
#  place.image_url = Faker::LoremFlickr.unique.image(size: "40X30", search_terms: ['london', 'restaurant'])
#  place.save!
# end

