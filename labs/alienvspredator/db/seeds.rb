ct1 = CreatureType.create(:name => 'Alien')
ct2 = CreatureType.create(:name => 'Predator')
ct3 = CreatureType.create(:name => 'Godzilla')
ct4 = CreatureType.create(:name => 'Medusa')

('Aa.Zz').each do |letter|
  c = Creature.create(:name => '', :weapon = '', :password => 'a', :password_confirmation => 'a')
end