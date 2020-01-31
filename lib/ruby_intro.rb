# When done, submit this entire file to the autograder.

# Part 1

# Returns a sum of integers in the given array
def sum arr
  arr.reduce(0, :+)
end

# Returns a sum of the two largest integers in the given array
def max_2_sum arr
  arr.max(2).reduce(0, :+)
end

# Returns true if any two integers sum to equal n
def sum_to_n? arr, n
  # Creates an array of every possible pair in arr and finds pair that sums n
  if arr.combination(2).find{|a,b| a + b == n}
    return true
  else
    return false
  end
end

# Part 2

# Returns string "Hello, [name]" with the given name
def hello(name)
  "Hello, #{name}"
end

# Returns true if the first letter of the given string is a consonant
def starts_with_consonant? s
  # If empty, return false
  if s.size == 0
    return false
  end
  # Check if first character matches a consonant
  if s[0].match(/[[a-zA-Z]&&[^aeiouAEIOU]]/)
    return true
  else
    return false
  end
end

# Returns true if the string represents a binary number that is a multiple of 4
def binary_multiple_of_4? s
  # Check that string is a binary number
  if s.size == 0 || s.match(/[a-zA-Z]/)
    return false
  end
  
  # Convert the string to a decimal number
  binary = []
  n = 0
  # Put the reversed string into an array
  s.reverse.each_char{|c| binary.push(c)}
  # For each character, if it is a '1' then add the corresponding power of 2
  binary.each_with_index{|b,i| n += 2**(i) if b == '1'}
  
  # Check if the number is a multiple of 4
  if n % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

# Represents a book with a ISBN number and a price
class BookInStock
  # Constructor with instance variables
  def initialize(isbn, price)
    if isbn.size == 0
      raise ArgumentError.new("ISBN should not be empty.")
    end
    if price <= 0
      raise ArgumentError.new("Price should be greater than zero.")
    end
    @isbn = isbn
    @price = price
  end
  
  # ISBN getter
  def isbn
    @isbn
  end
  
  # ISBN setter
  def isbn=(isbn)
    @isbn = isbn
  end
  
  # Price getter
  def price
    @price
  end
  
  #Price setter
  def price=(price)
    @price = price
  end 

  # Returns the price as a string
  def price_as_string
    sprintf("$%.2f", @price)
  end

end
