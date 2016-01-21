# Based on https://github.com/hackerschoolmty/rbjs101
# Docs:
# http://ruby-doc.org/core-2.2.0/

# Modules
# http://ruby-doc.org/core-2.2.0/Module.html
# They are use to encapsulate behavior which can be shared or as namespace

module Operation

  def self.sum(a,b)
    a + b
  end

  def self.substract(a,b)
    a - b
  end

  def self.multiply(a,b)
    a * b
  end
end

Operation.sum(1,2) # 3
Operation.substract(1,2) # -1
Operation.multiply(1,2) # 2

module APIClass
  class Student
    def initialize(name)
      @name = name
    end
  end
end

class Student
  def initialize(name, semester)
    @name = name
    @semester = semester
  end
end

#Create and object
itesm_student = APIClass::Student.new("Abraham")
student = Student.new("Abraham", 9)

# Classes
# Behavior & Attributes
class User

  def initialize(name, email)
    @name = name
    @email = email
  end
end

user = User.new("Kuri", "kurenn@icalialabs.com")
puts user.inspect # #<User:0x007ff1e3862f68 @name="Kuri", @email="kurenn@icalialabs.com">

class Dog
  attr_reader :age # Only read method
  attr_writer :bree # Only write method
  attr_accessor :name # Read/Write methods

  def initialize
    @age = 0
  end
end

dog = Dog.new

dog.age # => 0
dog.bree = "Bulldog"
dog.name = "Fido"
dog.name # => Fido

# Instance methods
# Describe behavior of the object
class Transaction
  def process
    puts "Your transaction was processed successfully"
  end
end

transaction = Transaction.new
transaction.process #=> Your transaction was processed successfully

# Class Methods
class MobilePhone
  def initialize(brand)
    @brand = brand
  end

  def self.info
    'Awesome mobile'
  end

  def info
    "Mobile phone with brand: #{@brand}"
  end
end

mobile_phone = MobilePhone.new("iPhone")
puts MobilePhone.info # => Awesome mobile
puts mobile_phone.info # => Mobile phone with brand: iPhone

#Inheritance

class Animal
  def initialize(sound)
    @sound = sound
  end

  def make_sound
    @sound
  end
end

class Duck < Animal
end

class Pig < Animal
  def make_sound
    "oink oink!"
  end
end

duck = Duck.new("cuack cuack!")
puts duck.make_sound #=> cuak cuack!

pig = Pig.new("muuuuu!")
puts pig.make_sound #=> "oink oink!"
