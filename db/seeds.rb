# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
puts 'Destroyed all restaurants..'
Restaurant.create(name: 'Shimps', address: 'The Blimper 13', phone_number: '99932223', category: 'french')
Restaurant.create(name: 'Blimps', address: 'The Climper 28', phone_number: '41414234', category: 'french')
Restaurant.create(name: 'Climps', address: 'The Glimper 34', phone_number: '63511412', category: 'french')
Restaurant.create(name: 'Glimps', address: 'The Flimper 52', phone_number: '52199842', category: 'french')
Restaurant.create(name: 'Flimps', address: 'The Blimper 3', phone_number: '512582991', category: 'french')
puts 'Added new restaurants..'
