def foo(param = 'no')
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

def test(x, y = 1)
  x + y
end

p test(10, 10)
