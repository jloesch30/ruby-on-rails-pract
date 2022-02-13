"""
Without attribute acessors
"""


class Student
     # instance variable
     @first_name
     @last_name
     @email
     @username
     @password

     # this is a setter method
     def first_name=(name)
        @first_name = name
     end

     # getter method
     def first_name
        @first_name
     end

     def to_s
        "First name: #{@first_name}"
     end
end

josh = Student.new
# josh.first_name("Josh") THIS IS NOT A SETTER
josh.first_name = "Josh"
puts josh.first_name