class Student
    attr_accessor :first_name, :last_name, :email
    attr_reader :username


    def initialize(firstname, lastname, username, email, pass)
        @first_name = firstname
        @last_name = lastname
        @email = email
        @username = username
        @password = pass
    end
    
     def to_s
        "First name: #{@first_name}"
     end
end

josh = Student.new("Josh", "Loesch", "jloesch", "jloesch30@gmail.com", "test")
# josh.first_name("Josh") THIS IS NOT A SETTER
puts josh.first_name