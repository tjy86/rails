# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  director_id :integer
#  studio_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Movie < ActiveRecord::Base
	belongs_to :director
	belongs_to :studio
	has_and_belongs_to_many :actors
end
