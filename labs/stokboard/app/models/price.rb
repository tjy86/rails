# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  num        :decimal(, )
#  stock_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Price < ActiveRecord::Base
  belongs_to :stock
end
