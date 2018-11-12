class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @alive = true
    @orange_count = 0

    @oranges_start_age = 4
    @growth_rate = 10
    @tree_death_age = 12
  end

  def how_tall
    puts "Your orange tree is now #{@height}cms tall."
  end

  def how_old
    puts "Your tree is #{@age} years old."
  end

  def count_oranges
    puts "There are #{@orange_count} oranges on your tree."
  end

  def pick_orange
    if @orange_count > 0
      @orange_count -= 1
      puts "You ate an orange, it was delicious."
    else
      puts "You've picked all the oranges. There are none left for this year."
    end
  end

  def one_year_passes
    @age += 1
    @orange_count = 0
    @height += @growth_rate

    if @age >= @oranges_start_age
      @orange_count += 1 + (@age * 0.4).ceil
    end

    if @age == @tree_death_age
      @alive = false
      puts "Your tree has grown too old, it dies this year."
      exit
    end
  end

end

tree = OrangeTree.new

puts "You planted an orange tree, what would you like to do?

Your options are:
height (how tall is your tree?)
age (how old is your tree?)
count (how many oranges are there on your tree?)
pick (pick an orange off your tree)
time (make one year pass)
end (end program) \n\n"

input = gets.downcase.chomp

while input != "end"
  case input
  when "height"
    tree.how_tall
  when "age"
    tree.how_old
  when "count"
    tree.count_oranges
  when "pick"
    tree.pick_orange
  when "time"
    tree.one_year_passes
    puts "One year passes."
  else
    puts "I don't understand that"
  end

  input = gets.downcase.chomp
end
