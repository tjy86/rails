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
	has_many :sent_messages, :class_name => 'Message', :foreign_key => 'sender_id'
	has_many :received_messages, :class_name => 'Message', :foreign_key => 'receiver_id'
end
