# == Schema Information
#
# Table name: creatures
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  weapon          :string(255)
#  password_digest :string(255)
#  creature_type   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Creature < ActiveRecord::Base
	belongs_to :creature_type
end
