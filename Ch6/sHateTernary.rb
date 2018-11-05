puts "Hello, what is your name?"
name = gets.chomp.capitalize

name.chr == "S" ? (puts name.upcase) : (puts "Hi, #{name}")
