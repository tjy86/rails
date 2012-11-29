# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

names =["Carroll",  "Kallie", "Lakeesha", "Gordon", "Tiny", "Soila",  "Rodrick",  "Johna",  "Tobias", "Antonina", "Aleshia",  "Randa",  "Allen",  "Damaris",  "Lin",  "Shanna", "Rhea", "Leana",  "Miki", "Johnson",  "Georgia",  "Ilana",  "Kala", "Mickey", "Morton", "Caitlin",  "Alva", "Melina", "Kyong",  "Luci", "Hertha", "Margarette", "Maricruz", "Jacquelyn",  "Grace",  "Terrell",  "Taisha", "Celesta",  "Erick",  "John", "Lissette", "Lynetta",  "Marco",  "Davina", "Marin",  "Kennith",  "Ellyn",  "Thanh",  "Yajaira",  "Stacia", "Melodee",  "Lorine", "Richelle", "Katheryn", "Eulalia",  "Audie",  "Honey",  "Madelaine",  "Hipolito", "Maple",  "Sandy",  "Martha", "Doretha",  "Ellena", "Myra", "Jospeh", "Theda",  "Jennifer", "Sharleen", "Sharee", "Elizbeth", "Margarito",  "Veda", "Neely",  "Marcellus",  "Raven",  "Maynard",  "Lawanda",  "Donella",  "Shirlee",  "Karyl",  "Ami",  "Ashli",  "Felica", "Estelle",  "Enda", "Deanna", "Keenan", "Theodore", "Antonina", "Santana",  "Denisse",  "Isabelle", "Aleisha",  "Jorge",  "Levi", "Tanna",  "Todd", "Kira", "Jeri", "Camille",  "Clemmie",  "Marci",  "Gearldine",  "Marisa", "Consuela", "Hee",  "Boyce",  "Krysten",  "Yun",  "Sabra",  "Winston",  "Dee",  "Edward", "Shandi", "Cleotilde",  "Hugh", "Romaine",  "Leena",  "Magdalena",  "Kyra", "Brittaney",  "Joselyn",  "Darius", "Solomon",  "Jacqulyn", "Erwin",  "Jamison",  "Deloise",  "Sixta",  "Armida", "Perla",  "Alonso", "Alisia", "Reed", "Miles",  "Albertina",  "Yu", "Elfreda",  "Roseann",  "Ali",  "Randolph", "Aleisha",  "Sebastian",  "Ranae",  "Tobie",  "Horace", "Lola", "Kathryne", "Elisa"]

490.times do
  Ninja.create(:name => names.sample)
end