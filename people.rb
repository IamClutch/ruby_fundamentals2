class Person
  attr_accessor :name
  def greeting
    puts "Hi, my name is #{name}"
  end
  def initialize
    @name = name
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

#8. and undefined method 'teach' is what occurs when the teach method is called on the instructor.
#This happens because the Instructor inheritance of the Person class. it must follow the the method of that class. 
