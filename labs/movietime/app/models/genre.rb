# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ActiveRecord::Base
	attr_accessible :type
	has_and_belongs_to_many :movies
end
