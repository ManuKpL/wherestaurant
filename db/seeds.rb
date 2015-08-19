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
    address: "5 rue de la jetée verte 75 001 Paris",
    phone_number: "+33 1 45 25 65 14",
    category: "french",
    picture: "http://40.media.tumblr.com/e61ac017d8f8c130d0f38acedd28f6eb/tumblr_ng9v03ynLQ1tomxvuo8_1280.jpg"
  },
    {
    name: "Le temps des cerises",
    address: "28 rue de la butte aux cailles 75 013 Paris",
    phone_number: "+33 1 64 89 25 16",
    category: "french",
    picture: "http://41.media.tumblr.com/fca0eb710f5acabffa1677a6c550dc70/tumblr_n1eimmwumj1tomxvuo6_1280.jpg"
  },
    {
    name: "La butte au Thai",
    address: "35 rues des cinq diamants 75 013 Paris",
    phone_number: "+33 9 14 25 89 45",
    category: "thai",
    picture: "http://41.media.tumblr.com/5c94b465ed3d99adabf29cabc88e8820/tumblr_nmxa6wbRA71tomxvuo1_1280.jpg"
  },
  {
    name: "Pizza Pinaut",
    address: "18 grande rue 17 670 La Couarde sur mer",
    phone_number: "+33 9 14 25 89 45",
    category: "italian",
    picture: "http://41.media.tumblr.com/ffc804c4c890f338e93b9187618b13a1/tumblr_n2uoyywZiU1tomxvuo7_1280.jpg"
  }
]

restaurants.each { |restaurant| restau = Restaurant.create(restaurant) }
