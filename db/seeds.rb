# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users","events"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

user1 = User.create!(first_name:"Andrew", last_name:"Smith", mobile:"07920201985", email:"andrew.smith@ipsofactouk.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: true, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/me.jpg") , password:"password")

user2 = User.create!(first_name:"Axel", last_name:"Berdugo", mobile:"07920201985", email:"axel@berdugo.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/axel.png") , password:"password")

user3 = User.create!(first_name:"Bex", last_name:"Bolton", mobile:"07920201985", email:"bex@bolton.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/bex.png") , password:"password")



user4 = User.create!(first_name:"Mike", last_name:"Hayden", mobile:"07920201985", email:"mike@hayden.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/mike.png") , password:"password")

user5 = User.create!(first_name:"Adri", last_name:"Black", mobile:"07920201985", email:"adri@black.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/adri.png") , password:"password")

user6 = User.create!(first_name:"Chanse", last_name:"Campbell", mobile:"07920201985", email:"chase@campbell.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/chanse.png") , password:"password")

user7 = User.create!(first_name:"Will", last_name:"Cook", mobile:"07920201985", email:"will@cook.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/will.jpg") , password:"password")

user8 = User.create!(first_name:"Rane", last_name:"Gowen", mobile:"07920201985", email:"rane@gowen.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/rane.png") , password:"password")

user9 = User.create!(first_name:"Toni", last_name:"Rossi", mobile:"07920201985", email:"toni@rossi.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/toni.png") , password:"password")

user10 = User.create!(first_name:"Jules", last_name:"Wyatt", mobile:"07920201985", email:"jules@wyatt.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/jules.png") , password:"password")



event1 = Event.create!(name:"Ministry of Sound", date: DateTime.new(2016,8,22), description:"The height of summer is upon us, and to celebrate we've invited Tim Sheridan to headline Saturday Sessions in the Box with support from Orlando Boom and Heretic.", allocation: 50, brand_logo: File.open(Rails.root.to_s + "/db/seeds_images/ministry_of_sound.jpg"), user_id: 1)


event2 = Event.create!(name:"CRISIS", date: DateTime.new(2016,8,30), description:"The UKs biggest weekly student night is back with an All Nighter through till 6am. Say hello to friends old and new and say goodbye to Thursday morning lectures.", allocation: 150, brand_logo: File.open(Rails.root.to_s + "/db/seeds_images/crisis.jpg"), user_id: 1)

event3 = Event.create!(name:"Fez", date: DateTime.new(2016,8,15), description:"The long weekend is here and where better to bring your party ......Our legendary dance floor will be jumping to all the latest dance floor fillers and classic tracks", allocation: 30, brand_logo: File.open(Rails.root.to_s + "/db/seeds_images/fez.png"), user_id: 1)

event4 = Event.create!(name:"Infernos", date: DateTime.new(2016,9,12), description:"Filthy, dirty hole in Clapham invites you to spend £10 per jagerbomb and listen to sclub on repeat. Enjoy middle class working types in their twenties trying to take themselves back to University.", allocation: 50, brand_logo: File.open(Rails.root.to_s + "/db/seeds_images/infernos.jpg"), user_id: 1)

event5 = Event.create!(name:"Oslo", date: DateTime.new(2016,9,15), description:"Each and every Friday night, Valhalla brings you London’s best party DJs playing strictly party music: Hip-Hop, R&B, Garage, Guilty Pleasures, House, Funk, Disco & more!", allocation: 20, brand_logo: File.open(Rails.root.to_s + "/db/seeds_images/oslo.png"), user_id: 1)