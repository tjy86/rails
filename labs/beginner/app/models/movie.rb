class Movie < ActiveRecord::Base
  attr_accessible :description, :gross, :name, :release_date, :tickets_sold
end
