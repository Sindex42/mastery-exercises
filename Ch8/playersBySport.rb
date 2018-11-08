players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

players_by_sport = {} # create blank hash

players.each do |player| # each individual hash is called "player"
  sport = player[:sport] # sport = value of the sport key, inside "player" hash

  if players_by_sport[sport] == nil # if the sport key does not exist
    players_by_sport[sport] = [] # create blank array with that name
  end

  players_by_sport[sport].push(player[:name]) # push name to sport array
end

puts players_by_sport
