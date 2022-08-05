# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  attr_accessor :color, :name

  def initialize(name, color = "silver")
    @name = name
    @color = "silver"
  end

  def say(string)
    puts "#{name} the #{color} horse says: *~*#{string}*~*"
  end
end

sparkles = Unicorn.new("Sparkles")
sparkles.say("yo")

sunshine = Unicorn.new("Sunshine")
sunshine.color = "blue"
sunshine.say("sup")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  attr_accessor :name, :pet, :thirsty

  def initialize(name = "[DEFAULT VAMPIRE NAME]", pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

  def drink
    if thirsty
      @thirsty = false
      puts "#{name} drinks something and is no longer thirsty. Also their pet is a(n) #{pet}."
    else
      puts "#{name} the vampire is not thirsty and does not want to drink something. Also their pet is a(n) #{pet}."
    end
  end
end

v1 = Vampire.new
v1.drink
v1.drink

v2 = Vampire.new("jim")
v1.drink

v3 = Vampire.new("bob", "dog")
v3.drink


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_accessor :name, :rider, :color, :is_hungry, :hunger

  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @hunger = 0
  end

  def eat
    puts "#{name} the big #{color} dragon eats. Also his riders name is #{rider}"
    @hunger += 1
    if(@hunger >= 4)
      is_hungry = false
      puts "The dragon is no longer hungry."
    else
      puts "The dragon is still hungry."
    end
  end
end

d1 = Dragon.new("Lizardo", "jeff", "red")
d1.eat

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  attr_accessor :name, :disposition, :age, :is_adult, :is_old, :has_ring

  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false

    if @name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end
  end

  def celebrate_birthday
    @age += 1
    puts "#{name} has just turned #{age}."
    if @age == 33
      puts "#{name} is now an adult."
      @is_adult = true
    elsif age >= 101
      puts "#{name} is now old."
      @is_old = true
    end
  end
end

h1 = Hobbit.new("Frodo", "Frodoish")

while h1.is_old == false
  h1.celebrate_birthday
end
