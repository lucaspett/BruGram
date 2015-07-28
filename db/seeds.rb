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

Photo.create! public: true, caption: "Transformation Tuesday!", image: "http://ak-hdl.buzzfed.com/static/enhanced/web05/2012/5/1/21/enhanced-buzz-10015-1335923979-10.jpg"

Photo.create! public: true, caption: "Not having the best day yall", image: "http://www.eonline.com/eol_images/Entire_Site/2014717/rs_500x280-140817013907-RK_204_22.jpg"