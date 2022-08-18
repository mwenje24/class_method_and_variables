#----instance method
#is a method defined within the objects class
class Person
    def gender
        puts "Male"
    end
end

person = Person.new()
person.gender


#-----instance variable
#a variable accessible to any instance method in a particular instance of a class
#instance variables are tied to a specific objects
class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    def response
        puts "My name is #{@name} and i am #{@age}"
    end
end

my_guy = Person.new("David", 18)
my_gee = Person.new("Kate", 32)
my_guy.response
my_gee.response


#-----class method
# are used for implementing behavior that is related to a class in general
# are called directly from a class by class_name.class_method
#they are denoted by the self key word

class MyMethodClass
    def self.class_method
        puts "My class method"
    end
end

MyMethodClass.class_method




#-----class variable
#this are the characteristics of a class and are available accross different objects
class Dog
    @@dog_count = 0
    def initialize(name, breed)
        @name = name
        @breed = breed
        @@dog_count += 1
    end

    def response
        puts "#{@name} is a #{@breed}"
    end

    def self.dog_count
        puts "the total dogs created are #{@@dog_count}"
    end
end

dog1 = Dog.new("Bosco", "Bulldog")
dog2 = Dog.new("Kate", "Chihuahua")
dog3 = Dog.new("Jane", "Poodle")

dog1.response

Dog.dog_count

#-----class constants
#they are used to store data that won't change
class User
    ROLES = ["Admin", "Lecturer", "Student"]
end

p User::ROLES



#-----private methods
#a way of encupsulating functionalty within a class
class Result
    def efforts
        @ingredient = []
        book
        friends
        google

        puts "Your efforts were summed by #{@ingredient}"
    end

    private

    def book
        @ingredient << "facts"
    end

    def friends
        @ingredient << "rumours"
    end

    def google
        @ingredient << "misconception"
    end


end

student =Result.new
student.efforts

