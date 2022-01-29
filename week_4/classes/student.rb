class Student
    @@num_of_students = 0
    
    attr_accessor :name, :age, :address, :phone, :class_room_id
    def initialize(**arg)
        @name = arg[:name]
        @age = arg[:age]
        @address = arg[:address]
        @phone = arg[:phone]
        @class_room_id =[:class_room_id]
        
    end
    def self.counts
        @@num_of_students.length()
    end
    def say_hello
        "Hello !"
    end

    def noise
        @noise
    end
    def noise=(value)
        @noise = value
    end
end