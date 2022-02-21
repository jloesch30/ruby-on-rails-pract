require 'bcrypt'

users = [
    {username: "Josh", password: "password"},
    {username: "Johnny", password: "secret"},
]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_pass(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
end

# create the secure passwords
new_users = create_secure_pass(users)
puts new_users

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        puts "the username and pass was correct"
        return user_record
    end
  end
  "Credentials were not correct"
end 

record = authenticate_user("Josh", "password", new_users)
puts record
