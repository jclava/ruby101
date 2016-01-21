# Based on https://github.com/hackerschoolmty/rbjs101
# Docs:
# http://ruby-doc.org/core-2.2.0/

#Functions/Methods
def square(number)
  number * number
end

puts square(5) # => 25

#Loop
5.times do
  puts "I'm repeating myself 5 times"
end

# Blocks & yield
def email_to(name, &block)
  puts "Hola #{name}"
  yield if block_given? #this method is already on ruby
  puts "Fin"
end

email_to "Abraham" do
  puts "Este es mi mensaje"
end

# => Hola Abraham
#    Este es mi mensaje
#    Fin

#Named arguments
def email(to: nil, &block)
  puts "Hola #{to}"
  yield
  puts "With named arguments"
end

email to: "Abraham" do
  puts "Este es mi mensaje"
end

# => Hola Abraham
#    Este es mi mensaje
#    With named arguments

# Lambdas
square = -> (number) { number * number }
puts "Square Lambda: #{square.yield(5)}" #=> Square Lambda: 25

# Map
# Apply a function to a collection of elements

squareArray = []
[1,2,3,4,5].each do |number|
  squareArray << square.yield(number)
end
puts squareArray

[1,2,3,4,5].map do |number|
  number * number
end
# [1,4,9,16,25]

#Inline version
[1,2,3,4,5].map { |number| number * number }
# [1,4,9,16,25]

#Symbol to proc
[1,2,3,4,5].map(&:square)
# [1,4,9,16,25]

# Reduce
# Reduce a collection of values to one element
[12,3,4,5].reduce {|acum, number| acum + number }

# Inline version + Symbol to proc
[1,2,3,4,5].reduce(&:+)
