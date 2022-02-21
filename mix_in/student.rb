"""
Without attribute acessors
"""
require_relative 'crud'

# we want the class to have access to the module
class Student
  # we can include all of the module attributes here
  include Crud
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

josh = Student.new("Josh", "Loesch", "jloesch30@gmail.com", "jloesch30", "pass")
hashed_pass = josh.create_hash_digest(josh.password)

puts hashed_pass

