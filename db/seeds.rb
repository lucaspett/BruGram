# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.delete_all

puts "Creating photos..."

Photo.create! public: true, caption: "Me in all my glory", image: "http://nyulocal.com/wp-content/uploads/2009/04/britney-spears-ugly-glasses-stoned.jpg"
