# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Jimmy", password_digest: "password", email_address: "jimmy@test.com")
User.create!(name: "Helen", password_digest: "password", email_address: "helen@test.com")
User.create!(name: "Sandy", password_digest: "password", email_address: "sandy@test.com")
User.create!(name: "Sally", password_digest: "password", email_address: "sally@test.com")
User.create!(name: "Jonny", password_digest: "password", email_address: "jonny@test.com")
User.create!(name: "Joe", password_digest: "password", email_address: "joe@test.com")
User.create!(name: "Bob", password_digest: "password", email_address: "bob@test.com")
User.create!(name: "Heather", password_digest: "password", email_address: "heather@test.com")
User.create!(name: "Allison", password_digest: "password", email_address: "allison@test.com")
User.create!(name: "Dan", password_digest: "password", email_address: "dan@test.com")

Organization.create!(name: "Goodwill", hourly_rate: 12.50)
Organization.create!(name: "Pizza Hut", hourly_rate: 9.75)
Organization.create!(name: "Subway", hourly_rate: 15.00)
Organization.create!(name: "The City of Chicago", hourly_rate: 18)
Organization.create!(name: "Express Car Wash", hourly_rate: 12.25)
Organization.create!(name: "Dino's Bar", hourly_rate: 8.50)
