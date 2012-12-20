class Computation < ActiveRecord::Base
  attr_accessible :name, :result

  def compute(calc)
    eval(calc)
  end
end
