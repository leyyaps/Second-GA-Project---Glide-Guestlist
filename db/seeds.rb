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

user1 = User.create(first_name:"Andrew", last_name:"Smith", mobile:"07920201985", email:"andrew.smith@ipsofactouk.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: true, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/me.jpg") , password:"password")

user2 = User.create(first_name:"Axel", last_name:"Berdugo", mobile:"07920201985", email:"axel@berdugo.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/axel.png") , password:"password")

user3 = User.create(first_name:"Bex", last_name:"Bolton", mobile:"07920201985", email:"bex@bolton.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/bex.png") , password:"password")

user4 = User.create(first_name:"Mike", last_name:"Hayden", mobile:"07920201985", email:"mike@hayden.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: true, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/mike.png") , password:"password")

user5 = User.create(first_name:"Adri", last_name:"Black", mobile:"07920201985", email:"adri@black.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/adri.png") , password:"password")

user6 = User.create(first_name:"Chanse", last_name:"Campbell", mobile:"07920201985", email:"chase@campbell.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/chanse.png") , password:"password")

user7 = User.create(first_name:"Chanse", last_name:"Campbell", mobile:"07920201985", email:"chase@campbell.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: true, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/mike.png") , password:"password")

user8 = User.create(first_name:"Rane", last_name:"Gowen", mobile:"07920201985", email:"chase@campbell.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: false, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/rane.png") , password:"password")

user9 = User.create(first_name:"Toni", last_name:"Rossi", mobile:"07920201985", email:"chase@campbell.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: true, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/toni.png") , password:"password")

user10 = User.create(first_name:"Rane", last_name:"Gowen", mobile:"07920201985", email:"chase@campbell.com", postcode: "SW15 3NR", address_1:"Flat 12, St Ronans", address_2:"63-65, Putney Hill", city: "London", is_admin: true, profile_pic: File.open(Rails.root.to_s + "/db/seeds_images/rane.png") , password:"password")



event1 = Event.create(name:"CRISIS", date: DateTime.new(2016,8,22), description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", allocation: 50)


event2 = Event.create(name:"CRISIS", date: DateTime.new(2016,8,30), description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", allocation: 150)

event3 = Event.create(name:"CRISIS", date: DateTime.new(2016,8,15), description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", allocation: 30)

event4 = Event.create(name:"CRISIS", date: DateTime.new(2016,9,12), description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", allocation: 50)

event5 = Event.create(name:"CRISIS", date: DateTime.new(2016,9,15), description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", allocation: 20)


