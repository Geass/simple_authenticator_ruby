users = [
  {username: "szymon", password: "password1"},
  {username: "jan", password: "password2"},
  {username: "adam", password: "password3"},
  {username: "piotr", password: "password4"},
  ]

puts "Welcome in the authenticator"
50.times {print "-"}
puts
puts "This program will take the imput from the user and compare password"
puts "If the password is correct you will get back the object"


attempts = 0

while attempts < 3 do

  print "Type in your username: "
  input_username = gets.chomp
  print "Type in your password: "
  input_password = gets.chomp

  logged_in_user = users.find {|user| user[:username] == input_username && user[:password] == input_password}

  if logged_in_user
    puts "You have logged in. Your username is #{logged_in_user[:username]} and password is #{logged_in_user[:password]}."
  break
  else
    puts "Credentials were not correct"
  attempts +=1

    if attempts == 3
      puts "you have exceeded the number of attempts"
    end
  end
end
