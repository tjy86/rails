class StackTest

  def main
  end

  def factorial(value)
    if value > 1
      value * factorial(value - 1)
    else
      1
    end
  end

  def fib(x)
    if x > 2
      fib(x-1) + fib(x-2)
    else
      1
    end
  end

  # x=3
  # y=1
  # while x != 1 do
  #   y = x * y
  #   x = x-1
  # end
  # puts y

  # def x(value)
  #   if value !=1
  #     x(value-1)
  #   end
  #   puts value
  # end

end