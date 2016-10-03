# Implicit parameter declaration.
def some_method(first: nil, **rest)
  p first, rest
end

some_method first: 1, second: 2, third: 3
# prints 1 then {:second=>2, :third=>3}
