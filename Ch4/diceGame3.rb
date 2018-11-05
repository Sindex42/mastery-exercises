p1_score = 0
p2_score = 0
p1_round = 0
p2_round = 0

round = 0

while true do
  2.times do
    p1_score += rand(6) + 1
    p2_score += rand(6) + 1
  end

  round += 1
  puts "Round #{round}:\n P1: #{p1_score}, P2: #{p2_score}"

  if p1_score > p2_score
    p1_round += 1
  else
    p2_round += 1
  end

  p1_score = 0 #reset scores
  p2_score = 0

  break if p1_round == 2 || p2_round == 2
end

if p1_round == 2
  puts "Player 1 wins"
else
  puts "Player 2 wins"
end
