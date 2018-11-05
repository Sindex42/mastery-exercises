p1_score = 0
p2_score = 0

dice = 0

while true do
  p1_score += rand(6) + 1
  p2_score += rand(6) + 1

  dice += 1

  break if dice == 2
end

puts "Results:\n P1: #{p1_score}, P2: #{p2_score}"

if p1_score == p2_score
  puts "It's a tie"
elsif p1_score > p2_score
  puts "Player 1 wins"
else
  puts "Player 2 wins"
end
