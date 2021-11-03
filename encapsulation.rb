class Encapsulated 
    def initialize(attr1, attr2)
        @attr1 = attr1
        @attr2 = attr2
    end

    def try
        puts "#{@attr1} #{@attr2}"
    end
end

obj1 = Encapsulated.new("test","run")
obj1.try