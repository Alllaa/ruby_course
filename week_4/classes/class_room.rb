class ClassRoom
    @@classes = []
    @@id_auto = 0
    attr_accessor :name, :id

    def initialize(**args)
        @name = args[:name]
        @id = @@id_auto
        @@id_auto +=1
        @@classes.push(self)
    end

    def self.addClass(num_of_classes)
        num_of_classes.times{ |num|
            print "please enter the name of class number #{num+1}: "
            name_of_class =  gets.chomp
            class_room =ClassRoom.new(name:name_of_class)
            
            Student.addstudents(class_room.name, class_room.id)
            
        }
    end

    def self.print_all_class_room
        @@classes.each{|each_class|
            puts "the class name is #{each_class.name} and id is #{each_class.id}"
        }
        puts "======================================================"
    end
    def self.all_classes
        @@classes
    end
end