# Based on https://github.com/hackerschoolmty/rbjs101
# Docs:
# http://ruby-doc.org/core-2.2.0/

students = 20
puts "This is where everything begins"
puts "We're #{students} hackers"  # => nil

# Hashes
# http://ruby-doc.org/core-2.2.0/Hash.html
# Key => Value
# Fat Arrow style

student = { :name => 'Abraham', :lastname => 'Kuri', :age => 27 }
# Access an element
student[:name] # => 'Juan'
# Set an element 
student[:age] = 21 # => 21

# Convention
# :Symbol => Value
# Shorter notation
student = { name: 'Abraham', lastname: 'Kuri', age: 27 }

# Collections
# Arrays
# http://ruby-doc.org/core-2.2.0/Array.html
numbers = [1,2,3,4,5,6]
numbers << 7
numbers.size # => 7
numbers[0] # => 2

# Ranges
# http://ruby-doc.org/core-2.2.0/Range.html
numbers = (1..6)
numbers.min # 3
numbers.max # 20
numbers.to_a # [1,2,3,4,5,6]

# Handling collections
# #each
['apple', 'banana', 'orange'].each do |fruit|
  puts "I like #{fruit}"
end
