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
10.times do
  puts "Please enter your vote"
  vote = gets.chomp.downcase
    if vote == "a"
      fluffernutter += 1
    elsif vote == "b"
      harold_fitzgerald += 1
    elsif vote == "c"
      carl += 1
    else
      puts "That is an invalid choice. You lose your turn."
    end
end





# puts "Voter #1, what is your choice?"
# vote_one = gets.chomp.downcase
# if vote_one == "a"
#     fluffernutter += 1
# elsif vote_one == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #2, what is your choice?"
# vote_two = gets.chomp.downcase
# if vote_two == "a"
#     fluffernutter += 1
# elsif vote_two == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #3, what is your choice?"
# vote_three = gets.chomp.downcase
# if vote_three == "a"
#     fluffernutter += 1
# elsif vote_three == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #4, what is your choice?"
# vote_four = gets.chomp.downcase
# if vote_four == "a"
#     fluffernutter += 1
# elsif vote_four == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #5, what is your choice?"
# vote_five = gets.chomp.downcase
# if vote_five == "a"
#     fluffernutter += 1
# elsif vote_five == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #6, what is your choice?"
# vote_six = gets.chomp.downcase
# if vote_six == "a"
#     fluffernutter += 1
# elsif vote_six == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #7, what is your choice?"
# vote_seven = gets.chomp.downcase
# if vote_seven == "a"
#     fluffernutter += 1
# elsif vote_seven == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #8, what is your choice?"
# vote_eight = gets.chomp.downcase
# if vote_eight == "a"
#     fluffernutter += 1
# elsif vote_eight == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #9, what is your choice?"
# vote_nine = gets.chomp.downcase
# if vote_nine == "a"
#     fluffernutter += 1
# elsif vote_nine == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end
#
# puts "Voter #10, what is your choice?"
# vote_ten = gets.chomp.downcase
# if vote_ten == "a"
#     fluffernutter += 1
# elsif vote_ten == "b"
#     harold_fitzgerald += 1
# else
#     carl += 1
# end

# display the total votes

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





#when wouldnt it work properly
# if someone wrote in anything other than a, b, or c, the vote would go to Carl because I used "else" for that variable

# didnt perform as i would like when i was trying to display the winner. initially, i just used ">" in the if statements to display the winner and had a separate set of if statements for ties. I realized that two "winner" statements could display. For example, if a = 4, b = 3, c = 3, my program would have printed "A wins! Tie between B & C!" I fixed this by using ">=" in my if statements to
# if flufflernutter > harold_fitzgerald
#   puts "Fluffernutter wins!"
# and later...
# if harold_fitzgerald == carl
#   puts "Tie between Harold Fitzgerald and Carl"

# had == in each if statement so ties would print out twice
# if fluffernutter >= harold_fitzgerald && fluffernutter >= carl
#    if fluffernutter == harold_fitzgerald
#        puts "Tie between Fluffernutter and Harold Fitzgerald. Guess We have to get another cat!"
#    elsif fluffernutter == carl
#        puts "Tie between Fluffernutter and Carl. Guess We have to get another cat!"
#    end
# else
#    puts "Fluffernutter wins!"
# end



# didn't nest the if else statement properly
# if harold_fitzgerald >= fluffernutter && harold_fitzgerald >= carl
#     if harold_fitzgerald > fluffernutter && harold_fitzgerald > carl
#         puts "Harold Fitzgerald wins!"
#     end
# elsif harold_fitzgerald == fluffernutter
#     puts "Tie between Fluffernutter and Harold Fitzgerald. Guess We have to get another cat!"
# else
#     puts "Tie between Harold Fitzgerald and Carl. Guess We have to get another cat!"
# end
