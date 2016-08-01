# collect votes and determine a winner

puts "Help us pick a name for the cat."
puts " "
puts "The choices are:"
puts "A Fluffernutter"
puts "B Harold Fitzgerald"
puts "C Carl"
puts " "

# Here I set my variables as the names and
# I will define all variables as zero because they have no votes yet

fluffernutter = 0
harold_fitzgerald = 0
carl = 0

# store the votes in the correct variables

i = 0
while i < 10
  puts "Please enter your vote"
  vote = gets.chomp.downcase
    if vote == "a"
      fluffernutter += 1
      i += 1
    elsif vote == "b"
      harold_fitzgerald += 1
      i += 1
    elsif vote == "c"
      carl += 1
      i += 1
    else
      puts "That is an invalid choice. Try again."
    end
end

puts " "
puts "Below are the total votes for each name..."
puts "Fluffernutter: #{fluffernutter} vote(s)"
puts "Harold Fitzgerald: #{harold_fitzgerald} vote(s)"
puts "Carl: #{carl} vote(s)"
puts " "

# display the winner

if fluffernutter >= harold_fitzgerald && fluffernutter >= carl
    if fluffernutter > harold_fitzgerald && fluffernutter > carl
        puts "Fluffernutter wins!"
    elsif fluffernutter == harold_fitzgerald
        puts "Tie between Fluffernutter and Harold Fitzgerald. Guess We have to get another cat!"
    else
        puts "Tie between Fluffernutter and Carl. Guess We have to get another cat!"
    end
end

if harold_fitzgerald >= fluffernutter && harold_fitzgerald >= carl
    if harold_fitzgerald > fluffernutter && harold_fitzgerald > carl
        puts "Harold Fitzgerald wins!"
    elsif harold_fitzgerald == carl
        puts "Tie between Harold Fitzgerald and Carl. Guess We have to get another cat!"
    end
end

if carl >= fluffernutter && carl >= harold_fitzgerald
    if carl > fluffernutter && carl > harold_fitzgerald
        puts "Carl wins!"
    end
end
