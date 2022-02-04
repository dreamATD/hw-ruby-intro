# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
  
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size <= 1
    return arr.sum
  else
    return arr.max(2).sum
  end  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  ans = false
  arr.each_with_index { |x, i| ans ||= arr[(i + 1)..-1].include? (n - x) }
  return ans
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  t = s.upcase
  return !((t.empty?) || t[0] < 'A' || t[0] > 'Z' || ('AEIOU'.include? t[0]))
end

def binary_multiple_of_4? s
  return s == '0' || s.match("^[0-1]*00$") != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, 'Exception' if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end  
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
     raise ArgumentError, 'Exception' if isbn.empty?
    @isbn=isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
     raise ArgumentError, 'Exception' if price <= 0
    @price=price
  end
  
  def price_as_string
    "$%.2f" %@price
  end
end
