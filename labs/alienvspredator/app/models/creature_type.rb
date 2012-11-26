# == Schema Information
#
# Table name: creature_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CreatureType < ActiveRecord::Base
	has_many :creatures
end
