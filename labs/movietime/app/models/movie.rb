# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  rated       :string(255)
#  director_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Movie < ActiveRecord::Base
	has_one :director
	has_and_belongs_to_many :genres
end
