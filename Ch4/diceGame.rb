p1_roll = rand(6) + 1
p2_roll = rand(6) + 1

puts "Results:\n P1: #{p1_roll}, P2: #{p2_roll}"

if p1_roll == p2_roll
  puts "It's a tie"
elsif p1_roll > p2_roll
  puts "Player 1 wins"
else
  puts "Player 2 wins"
end
