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
=begin

  
   

    

    
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

=end


=begin
student = Student.new(name:'abdo',age:15, address: "giza",phone: '546', class_room_id: 1)
haider = Student.new(name: "alaa" , phone: "012000000" , address: "Alex " , age: 25,class_room_id: 2)
haider2 = Student.new(name: "mohamed" , phone: "012000000" , address: "Alex " , age: 25,class_room_id: 1)
haider3 = Student.new(name: "gaber" , phone: "012000000" , address: "Alex " , age: 25,class_room_id: 0)
haider4 = Student.new(name: "abdo" , phone: "012000000" , address: "Alex " , age: 25,class_room_id: 2)
haider5 = Student.new(name: "momn" , phone: "012000000" , address: "Alex " , age: 25,class_room_id: 1)
haider6 = Student.new(name: "moahmed" , phone: "012000000" , address: "Alex " , age: 25,class_room_id: 0)
haider7 = Student.new(name: "Haider" , phone: "012000000" , address: "Alex " , age: 25,class_room_id: 2)
math = ClassRoom.new(name: "math")
eng = ClassRoom.new(name: "english")
ara = ClassRoom.new(name: "arabic")

#Student.print_all_students
#p Student.search_student
p Student.insert_new_student
=end

state = 'go'
print "Welcome in School System Please Add how many Classes Room:" 
num_of_classes = gets.chomp.to_i   
ClassRoom.addClass(num_of_classes)
while(state != 'exit')
    if state == 'search'
        result = Student.search_student
        if(result == nil)
            p "No Student Found"
        else 
            Student.print_student(result)
        end
    end
    if state == 'insert_new_student'
        Student.insert_new_student
    end
    if state == 'insert_new_class'
        ClassRoom.addClass(1)
    end
    if state == 'print_all_student'
       Student.print_all_students
    end
    if state == 'print_all_classes'
        ClassRoom.print_all_class_room
    end
    p 'exit, search, insert_new_class, insert_new_student, print_all_student, print_all_classes'
    state = gets.chomp
end