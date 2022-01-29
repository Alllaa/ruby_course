# OOP Basic 

require_relative 'classes/student'
require_relative 'classes/class_room'

=begin
haider = Student.new
haider.noise = "Hello! not past"
puts haider.noise
=end
# puts haider.say_hello

# Attribute

# instance vs local variable vs @@classes 

# attr_reader attr_writer attr_accessor

# private  vs public 

# self classes
class Main
    @@classes = []
    @@students = []

    def self.addClass(num_of_classes)
        num_of_classes.times{ |num|
            print "please enter the name of class number #{num+1}: "
            name_of_class =  gets.chomp
            @@classes.push(ClassRoom.new(name_of_class))
        }
        return [@@classes[-1].name, @@classes[-1].id]
    end

    def self.addstudents(name, class_room_id)
            print "please enter the number of students for class #{name}: "
            num_of_students =  gets.chomp.to_i
            puts "please enter the details of each student for class #{name}: "
            num_of_students.times{ |num|
                p "Student #{num}"
                print("enter name of student #{num}: ")
                name =  gets.chomp
                print("enter age of student #{num}: ")
                age =  gets.chomp.to_i
                print("enter address of student #{num}: ")
                address =  gets.chomp
                print("enter phone of student #{num}: ")
                phone =  gets.chomp
                stud = Student.new(name:name, age: age, address: address, phone: phone, class_room_id: class_room_id) 
                @@students.push(stud)
            }
        num_of_classes = 0
    end

    def self.insert_new_student
        p "choose a class to add the new Student in: "
        print "the classes are:"
        @@classes.each{ |clas|
            print "[#{clas.name}, "
        }
        p ']'
        print "Enter name of class: "
        name_of_class = gets.chomp
        class_name = ''
        class_id = 0
        @@classes.each{|clas|
            if clas.name == name_of_class
                class_name = clas.name
                class_id = clas.id
            end
        }
        return [class_name,class_id]

    end

    def self.search_student
        p "write name of student and phone number: "
        print "name is: "
        name  = gets.chomp
        print "phone is: "
        phone  = gets.chomp
        @@students.each{|student|
            if (student.name == name && student.phone == phone)
                p "the student is found"
                p student
                return
            end
        }
        p "no student found"
    end
    def self.all_classes
        @@classes
    end
    def self.all_students
        @@students
    end

end
key_words = ["exit", "search", "insert_new_class_room","insert_new_student"]
state = 'go'


print "Welcome in School System Please Add how many Classes Room:"
num_of_classes = gets.chomp.to_i    
        Main.addClass(num_of_classes)
        Main.all_classes.each{ |clas|
            Main.addstudents(clas.name, clas.id)
        }
while state != "exit"
    if state == key_words[2]
        name,id = Main.addClass(1)
        Main.addstudents(name, id)
    end
    if state == key_words[1]
        Main.search_student
    end
    if state == key_words[3]
        class_name, class_id = Main.insert_new_student
        Main.addstudents(class_name, class_id)

    end
    p key_words
    p "1- write exit to exit from the app"
    p "2- write search to search student"
    p "3- write insert_new_class_room to inser new class with students"
    p "4- write insert_new_student to insert new student to class"
    state = gets.chomp

end
p Main.all_classes
p Main.all_students








