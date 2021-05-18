# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ad.create(width: 72, height: 100, status: "Proof", price: 127.98, rundate: Date.today, client_id: 1, position_id: 1, user_id: 1)

Client.create(name: 'Test client', address: 'Test address', phone: '0210921021', website: 'www.test.com', organisation_id: 1, user_id: 1)
