# OOP Basic 

require_relative 'classes/student'
require_relative 'classes/class_room'

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