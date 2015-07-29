# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.delete_all

puts "Creating photos..."

Photo.create! public: true, caption: "It's Britney, Bitch", image: "http://nyulocal.com/wp-content/uploads/2009/04/britney-spears-ugly-glasses-stoned.jpg"

Photo.create! public: true, caption: "Tbt to when I was an ostrich", image: "http://ak-hdl.buzzfed.com/static/enhanced/web05/2012/5/1/21/enhanced-buzz-10015-1335923979-10.jpg"

Photo.create! public: true, caption: "That moment when I dont win an oscar, again", image: "http://images6.fanpop.com/image/photos/34400000/Celebs-With-No-Teeth-funny-celebrity-moments-34438202-625-784.jpg"
