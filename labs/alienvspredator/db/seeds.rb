CreatureType.delete_all
Creature.delete_all

ct1 = CreatureType.create(:name => 'Alien')
ct2 = CreatureType.create(:name => 'Predator')
ct3 = CreatureType.create(:name => 'Godzilla')
ct4 = CreatureType.create(:name => 'Medusa')

creature_types =  [ct1,ct2,ct3,ct4]
weapons = ['knife','gun','boomerang','magic', 'mace']

('Aa'..'Zz').each do |letter|
  c = Creature.create(:name => letter, :weapon => weapons.sample, :password => 'a', :password_confirmation => 'a', :creature_type => creature_types.sample)
end