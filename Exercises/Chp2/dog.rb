class Dog
  
    attr_accessor :name, :age

    def name=(value)
      if value == ""
        raise "Name can't be blank idiot"
      end
      @name = value
    end 

    def move(destination)
      puts "#{@name} runs to the #{destination} and goes to sleep"
    end

    def talk
      puts "#{@name} says Bark!"
    end

    def report_age
      puts "#{@name} is #{@age} years old"
    end
  
end 

dog = Dog.new
dog.name = "Butters"
dog.age = 9
dog.report_age
dog.talk
dog.move("bed")

