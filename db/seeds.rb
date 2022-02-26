# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require_relative '../app/models/user'
require_relative '../app/models/place'

20.times do
 user = User.new
 user.first_name = Faker::Name.name
 user.last_name = Faker::Name.last_name
 user.email = Faker::Internet.email
 user.password = Faker::Internet.password
 # user.phone_number = Faker::PhoneNumber.cell_phone
 user.save!
end


20.times do
 place = Place.new
 place.name = Faker::Restaurant.name
 place.address = Faker::Address.full_address_as_hash(:longitude,
                                    :latitude,
                                    :country_name_to_code,
                                    country_name_to_code: {name: 'united_kingdom'})
 place.description = Faker::Restaurant.description
 place.website = Faker::Internet.url
 place.phone_number = Faker::PhoneNumber.phone_number
 place.image_url = Faker::LoremFlickr.unique.image(size: "40X30", search_terms: ['london', 'restaurant'])
 place.save!
end
