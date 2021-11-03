class Animal
    def some_method
       method_1
    end
    private
    def method_1
       puts "Hi I am a #{self.class}"
    end
end
class Dog < Animal
    def some_breed
       method_1
    end
end
class Cat < Animal
    def my_method
       self.method_1
    end
end
class Lion < Animal
    def my_roar
       Dog.new.method_1
    end
end

Cat.new.my_method
# Dog.new.method_1
# Lion.new.my_roar