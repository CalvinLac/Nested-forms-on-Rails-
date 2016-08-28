# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Address.destroy_all


50.times do
user = User.new
user.username = Faker::Name.name
user.email = Faker::Internet.email
user.save
end

50.times do 
  addy = Address.new
  addy.street = Faker::Address.street_name
  addy.city = Faker::Address.city
  addy.state = Faker::Address.state
  addy.country = Faker::Address.country
  addy.user_id = User.all.sample.id
  addy.save
end

60.times do 
  fri = Friending.new
  fri.friend_id = User.all.sample.id
  fri.friender_id = User.all.sample.id
  fri.save
end

