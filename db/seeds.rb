# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
## Users
user_names = ['Chris', 'John', 'Henry', 'Bob', 'Sally', 'Elizabeth', 'Dan']
user_names.each do |user_name|
  user = User.new(
    name: user_name,
    email: "#{user_name.downcase}@website.com",
    password: 'password'
  )
  user.save!
end
# # Posts
post.create!(comment: "Great machine, very fun", high_score: 2200, user_id: 1, address: "1005 Hemphill Ave NW, Atlanta, GA 30318", machine_name: "Star Trek(Pro)", machine_id: 1)

# # Machine
machines.create!(manufacturer: "homepin", high_score:3000, machine_id: 1, machine_name: "Star Trek(Pro)")


# # Location
locations.create!(address: "1005 Hemphill Ave NW, Atlanta, GA 30318", machine_name: "Star Trek(Pro)")
