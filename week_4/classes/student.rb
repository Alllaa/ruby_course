require_relative 'class_room'
class Student
    @@students = []

    attr_accessor :name, :age, :address, :phone, :class_room_id
    def initialize(**arg)
        @name = arg[:name]
        @age = arg[:age]
        @address = arg[:address]
        @phone = arg[:phone]
        @class_room_id =arg[:class_room_id]
        @@students.push(self)
    
    end
    def self.addstudents(name, class_room_id)
        print "please enter the number of students for class #{name}: "
        num_of_students =  gets.chomp.to_i
        puts "please enter the details of each student for class #{name}: "
        num_of_students.times{ |num|
            p "Student #{num}"
            print("enter name of student #{num+1}: ")
            name =  gets.chomp
            print("enter age of student #{num+1}: ")
            age =  gets.chomp.to_i
            print("enter address of student #{num+1}: ")
            address =  gets.chomp
            print("enter phone of student #{num+1}: ")
            phone =  gets.chomp
            Student.new(name:name, age: age, address: address, phone: phone, class_room_id: class_room_id) 
            p "======================================================"
        }
    end

    def self.search_student
        p "write name of student and phone number: "
        print "name is: "
        name  = gets.chomp
        print "phone is: "
        phone  = gets.chomp
       result = @@students.find{|student|
            student.name == name
             student.phone == phone
        }
       result 
    end
    
    def self.print_all_students
        @@students.each{|student|
            p "name: #{student.name}, age: #{student.age}, address: #{student.address}, phone: #{student.phone}, class room: #{student.class_room_id}"
            p "======================================================"    
        }
    end

    def self.insert_new_student
        p "choose a class to add the new Student in: "
        p ClassRoom.print_all_class_room
    
        print "Enter name of class: "
        name_of_class = gets.chomp
        room_class =ClassRoom.all_classes.find{|clas|
             clas.name == name_of_class 
        }
        if(room_class == nil)
            puts"wrong class name"
        else
            addstudents(room_class.name, room_class.id)
        end
    end

    def self.print_student(student)
            p "name: #{student.name}, age: #{student.age}, address: #{student.address}, phone: #{student.phone}, class room: #{student.class_room_id}"
            p "======================================================"      
        
    end
end

