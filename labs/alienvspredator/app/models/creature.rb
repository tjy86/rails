# == Schema Information
#
# Table name: creatures
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  weapon           :string(255)
#  password_digest  :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  creature_type_id :integer
#

class Creature < ActiveRecord::Base
  has_secure_password
	belongs_to :creature_type
  has_many :sent_messages, :class_name => 'Message', :foreign_key => 'sender_id'
  has_many :received_messages, :class_name => 'Message', :foreign_key => 'receiver_id'
end
