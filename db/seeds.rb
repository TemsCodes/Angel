# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Cleaning database..."
User.destroy_all
Place.destroy_all
# remove all the instances

User.create!(first_name: "Manu", last_name: "", email: "manu@angel.com", password: "123456")

20.times do
 user = User.new
 user.first_name = Faker::Name.name
 user.last_name = Faker::Name.last_name
 user.email = Faker::Internet.email
 user.password = Faker::Internet.password
 # user.phone_number = Faker::PhoneNumber.cell_phone
 user.save!
end


pizzaeast_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646943455/pizza-east-portobello_egckpp.jpg')

puts 'Creating places'
pizza_east = Place.create!(
  name: "Pizza East Shoreditch",
  description: "Best Pizza date in London!",
  address: "56A Shoreditch High St, London, E1 6JJ",
  website: "https://www.pizzaeast.com/",
  phone_number: Faker::PhoneNumber.phone_number,
)

pizza_east.photo.attach(io: pizzaeast_picture, filename: 'pizzaeast.png', content_type: 'image/png')

steak_co_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646943455/steak_co_c0edqe.jpg')

puts 'Creating places'
steak_co = Place.create!(
  name: "Steak&Co",
  description: "Great steak in Leicester",
  address: "Leicester, 3-5 Charing Cross Rd, London WC2H 0HA",
  website: "http://www.steakandco.blog/",
  phone_number: Faker::PhoneNumber.phone_number
)
steak_co.photo.attach(io: steak_co_picture, filename: 'steak_co.png', content_type: 'image/png')

frenchie_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646943455/frenchie_hoi0uh.jpg')

puts 'Creating places'
frenchie = Place.create!(
  name: "Frenchie Covent Garden",
  description: "Wonderful french restaurant",
  address: "16 Henrietta St, London WC2E 8QH",
  website: "http://www.frenchiecoventgarden.com/",
  phone_number: Faker::PhoneNumber.phone_number
)

frenchie.photo.attach(io: frenchie_picture, filename: 'frenchie.png', content_type: 'image/png')

kiln_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646943456/kiln_wrazdq.jpg')

puts 'Creating places'
kiln = Place.create!(
  name: "Kiln",
  description: "Incredible fusion restaurant Soho",
  address: "58 Brewer St, London W1F 9TL",
  website: "http://www.kilnsoho.com/",
  phone_number: Faker::PhoneNumber.phone_number
)

kiln.photo.attach(io: kiln_picture, filename: 'kiln.png', content_type: 'image/png')


bocca_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646943455/bocca_di_lupo_kdlpod.jpg')

puts 'Creating places'
bocca_di_lupo = Place.create!(
  name: "Bocca di Lupo",
  description: "Authentic small or large plate Italian dining",
  address: "12 Archer St, London W1D 7BB",
  website: "http://www.boccadilupo.com/",
  phone_number: Faker::PhoneNumber.phone_number
)
bocca_di_lupo.photo.attach(io: bocca_picture, filename: 'bocca.png', content_type: 'image/png')

barrafina_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646943455/barrafina_qcuu8y.jpg')

puts 'Creating places'
barrafina = Place.create!(
  name: "Barrafina",
  description: "Delicious Spanish cuisine in London",
  address: "26-27 Dean St, London W1D 3LL",
  website: "http://www.barrafina.co.uk/",
  phone_number: Faker::PhoneNumber.phone_number
)
barrafina.photo.attach(io: barrafina_picture, filename: 'barrafina.png', content_type: 'image/png')

bob_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646943455/bob-bob-ricard_izl2uk.jpg')

puts 'Creating places'
bob_bob_ricard = Place.create!(
  name: "Bob Bob Ricard Soho",
  description: "Uniformed staff serve Russian-inspired Modern British menu",
  address: "1 Upper James St, London W1F 9DF",
  website: "http://www.bobbobricard.com/",
  phone_number: Faker::PhoneNumber.phone_number
)

bob_bob_ricard.photo.attach(io: bob_picture, filename: 'bob_bob_ricard.png', content_type: 'image/png')


luca_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646943455/luca_rqvxum.jpg')

puts 'Creating places'
luca = Place.create!(
  name: "Luca",
  description: "Warm, vintage, brick-lined restaurant featuring an elevated Italian menu",
  address: " 88 St John St, London EC1M 4EH",
  website: "https://luca.restaurant/",
  phone_number: Faker::PhoneNumber.phone_number
)

luca.photo.attach(io: luca_picture, filename: 'luca.png', content_type: 'image/png')


sexy_picture = URI.open('https://res.cloudinary.com/dfljjticx/image/upload/v1646944415/sexy_k9s75i.jpg')

puts 'Creating places'
sexy_fish = Place.create!(
  name: "Sexy Fish",
  description: "Swanky, art-filled setting for robata-grilled fish, raw-bar items & more.",
  address: "Berkeley Square House, Berkeley Square, London W1J 6BR",
  website: "https://sexyfish.com/",
  phone_number: Faker::PhoneNumber.phone_number
)
sexy_fish.photo.attach(io: sexy_picture, filename: 'sexy.png', content_type: 'image/png')







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
