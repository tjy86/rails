# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tenant.delete_all
Apartment.delete_all

t1 = Tenant.create(:name => 'A', :age => 21, :gender => "m")
t2 = Tenant.create(:name => 'B', :age => 22, :gender => "m")
t3 = Tenant.create(:name => 'C', :age => 25, :gender => "f")
t4 = Tenant.create(:name => 'D', :age => 53, :gender => "m")
t5 = Tenant.create(:name => 'E', :age => 32, :gender => "f")
t6 = Tenant.create(:name => 'F', :age => 64, :gender => "m")

a1 = Apartment.create(:name => 'X1', :rooms => 3, :rent => 1200)
a2 = Apartment.create(:name => 'X2', :rooms => 3, :rent => 1200)
a3 = Apartment.create(:name => 'Y3', :rooms => 3, :rent => 3400)

p1 = Pet.create(:name => "Lassie", :age => 3, :species => "Dog")
p2 = Pet.create(:name => "Coco", :age => 1, :species => "Dog")
p3 = Pet.create(:name => "Tweetie", :age => 3, :species => "Bird")

a1.tenants = [t1,t2,t3]
a2.tenants = [t4,t5]
a3.tenants << t6

t1.pets << p1
t3.pets << p2
t4.pets << p3