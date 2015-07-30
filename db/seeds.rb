# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.delete_all

puts "Creating photos..."

aobo = User.create! email: "aobothealmighty@fearme.com", password: "password", password_confirmation: "password"
erica = User.create! email: "ericaduinyomom@sportz.com", password: "password", password_confirmation: "password"
brian = User.create! email: "mynameisbrian@mynameisbrian.com", password: "password", password_confirmation: "password"

Photo.create! public: true, caption: "My name is Aobo and I am very successful because I did research on sharks in space and do you like the way I casually fold my arms in this picture I know right I am so candid", image: "http://media.cleveland.com/seniorstandouts_impact/photo/aobo-guojpg-11e447af3f2f2f81.jpg", user_id: aobo.id

Photo.create! public: true, caption: "MIT should change its name to ERICA... I mean, I don't know who Mit is but he has got to go amirite?? #sportz", image: "http://cdn87.psbin.com/img/mw=150/mh=200/cr=n/d=zt75l/i5wsjh4vhjjexudv.jpg", user_id: erica.id

Photo.create! public: true, caption: "I am very happy today and my name is Brian", image: "http://www.flowhealingarts.org/wp-content/uploads/2012/08/Brian-300x300.jpg", user_id: brian.id
