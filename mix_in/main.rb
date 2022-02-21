require_relative 'cypt_func'

# $LOAD_PATH << "." # do this if we need to add it to the path
# require 'crud'

users = [
      {username: "Josh", password: "password"},
      {username: "Johnny", password: "secret"},
  ]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
