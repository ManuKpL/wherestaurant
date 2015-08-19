# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


restaurants = [
  {
    name: "La bonne poire",
    address: "5 rue de la jetée verte",
    phone_number: "+33 1 45 25 65 14",
    category: "french"
  },
    {
    name: "Le temps des cerises",
    address: "28 rue de la butte aux cailles",
    phone_number: "+33 1 64 89 25 16",
    category: "french"
  },
    {
    name: "La butte au Thai",
    address: "35 rues des cinq diamants",
    phone_number: "+33 9 14 25 89 45",
    category: "thai"
  }
]

restaurants.each { |restaurant| restau = Restaurant.create(restaurant) }
