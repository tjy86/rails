# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.delete_all
Actor.delete_all
Director.delete_all
Studio.delete_all

m1 = Movie.create(:name => "Movie 1")
m2 = Movie.create(:name => "Movie 2")
m3 = Movie.create(:name => "Movie 3")
m4 = Movie.create(:name => "Movie 4")

d1 = Director.create(:name => "George Lucas")
d2 = Director.create(:name => "Thomas Bay")
d3 = Director.create(:name => "Director 3")
d4 = Director.create(:name => "Director 4")

s1 = Studio.create(:name => "Universal")
s2 = Studio.create(:name => "Sony")
s3 = Studio.create(:name => "HK")
s4 = Studio.create(:name => "Pixar")

a1 = Actor.create(:name => "Tom Cruise")
a2 = Actor.create(:name => "Ben Affleck")
a3 = Actor.create(:name => "Brad Pitt")
a4 = Actor.create(:name => "Halle Berry")

s1.movies << m1
s2.movies << m2 << m4
s3.movies << m3

d1.movies << m2
d2.movies << m3
d4.movies << m1 << m4

m1.actors << a1 << a3
m2.actors << a4
m4.actors << a2
