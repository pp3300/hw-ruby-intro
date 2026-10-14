# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.max(2).sum
end

def sum_to_n?(arr, n)
  return false if arr.length < 2

  seen = {}
  arr.each do |val|
    return true if seen[n - val]
    seen[val] = true
  end

  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  /\A[b-df-hj-np-tv-z]/i.match?(s.to_s)
end

def binary_multiple_of_4?(s)
  return false unless s.is_a?(String)

  /\A(0+|[01]*00)\z/.match?(s)
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty' if isbn.to_s.empty?
    raise ArgumentError, 'Price must be greater than zero' if price.to_f <= 0

    @isbn = isbn
    @price = price.to_f
  end

  def price_as_string
    format('$%.2f', price)
  end
end
