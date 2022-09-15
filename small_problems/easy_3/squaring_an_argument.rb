# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).


def square (n1) 
  p n1 * n1
end

square(20)


# Our square method is implicitly returning the return value from multiply(n, n).

def square(n)
  def multiply(n1, n2)
    n1 * n2
  end
  multiply(n, n)
end

p square(20)