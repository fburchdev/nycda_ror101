class User
  attr_accessor :email
  attr_accessor :name

  def initialize(attr_hash)
  	self.name = attr_hash[:name]
  	self.email = attr_hash[:email]
  end

  def login (password)
    puts self.name + " logged in"
  end
end

class Administrator < User
 def create_user(attr_hash)
    User.new(attr_hash)
  end
end

puts "Please supply a password: "
password = gets.chomp
user1 = User.new(name: "Frances", email: "fburch@gmail.com")
user1.login(password)

admin = Administrator.new(name: "Admin", email: "admin@mydomain.com")
user2 = admin.create_user(name: "Sam", email: "samiam@mydomain.com")
user2.login(password)
