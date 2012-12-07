# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  symbol     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
  has_many :prices
end
