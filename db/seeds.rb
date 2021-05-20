# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative '../lib/populator_fix.rb'

Organisation.create(name: "Adbot")

User.populate 10 do |u|
  u.email = Faker::Internet.email
  u.encrypted_password = "password"
  u.organisation_id = 1
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.created_at = Time.now
  u.updated_at = Time.now
end

Platform.populate 5 do |p|
  p.name = Faker::GreekPhilosophers.name
  p.organisation_id = 1
  p.created_at = Time.now
  p.updated_at = Time.now
end

Position.populate 10 do |p|
  p.name = Faker::Cannabis.strain
  p.platform_id = Faker::Number.between(from: 1, to: 5)
  p.created_at = Time.now
  p.updated_at = Time.now
end

Client.populate 20 do |c|
  c.name = Faker::Books::CultureSeries.culture_ship
  c.address = Faker::Address.street_address
  c.phone = Faker::PhoneNumber.cell_phone_in_e164
  c.website = Faker::Internet.domain_name
  c.organisation_id = 1
  c.user_id = Faker::Number.between(from: 1, to: 10)
  c.created_at = Time.now
  c.updated_at = Time.now
end

Contact.populate 50 do |c|
  c.name = Faker::Books::Dune.character
  c.department = Faker::Commerce.department
  c.phone = Faker::PhoneNumber.phone_number
  c.mobile = Faker::PhoneNumber.cell_phone_in_e164
  c.email = Faker::Internet.email
  c.client_id = Faker::Number.between(from: 1, to: 20)
  c.created_at = Time.now
  c.updated_at = Time.now
end

Ad.populate 30 do |a|
  a.width = Faker::Number.number(digits: 3)
  a.height = Faker::Number.number(digits: 3)
  a.status = Faker::App.name
  a.price = Faker::Commerce.price
  a.rundate = Faker::Date.forward(days: 60)
  a.client_id = Faker::Number.between(from: 1, to: 20)
  a.position_id = Faker::Number.between(from: 1, to: 10)
  a.user_id = Faker::Number.between(from: 1, to: 10)
  a.updated_by = Faker::Number.between(from: 1, to: 10)
  a.created_at = Time.now
  a.updated_at = Time.now
end

User.create(email: "test@test.com", password: "password", organisation_id: 1, superadmin_role: true, first_name: "Super", last_name: "Admin")
