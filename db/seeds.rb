# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fnames = ["Adam", "Benjamin", "Caleb", "Daniel", "Frank", "Gideon"]
lnames = ["Smith", "Jones", "Washington", "Jefferson", "Gardener", 
"Cooper"]
User.delete_all
25.times do
  name = fnames[rand(6)] + " " + lnames[rand(6)]
  email = (name + "@foobar.com").gsub(" ", "")
  User.create(name: name, email: email)
end
