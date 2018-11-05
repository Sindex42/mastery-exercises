puts "Hello, what is your name?"
name = gets.chomp.capitalize
#first_letter = name.chars[0]

if name.chr == "S"
  puts name.upcase
else
  puts "Hi, #{name}"
end
