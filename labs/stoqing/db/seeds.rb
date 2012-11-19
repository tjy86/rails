# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:name => "Bob", :password => "bob1")
User.create(:name => "A", :password => "a1")
User.create(:name => "B", :password => "b1")
User.create(:name => "C", :password => "c1")
User.create(:name => "D", :password => "d1")