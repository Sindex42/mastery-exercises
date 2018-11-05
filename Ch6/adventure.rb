location = 0

while location < 2 do
  if location == 0
    puts "You wake up in a forest. \n You can go forward, left or right."
  end

  direction = gets.chomp

  case direction
  when "right"
    location = 0
    puts "You encounter a Goblin. You die."
  when "left"
    location = 0
    puts "You encounter a Werewolf. You die."
  when "forward"
    location += 1
    puts "You're facing forward.\n You can go forward, left or right."
  end
end

puts "You've escaped!" if location = 2
