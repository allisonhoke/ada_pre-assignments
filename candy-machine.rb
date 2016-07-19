puts "Welcome to Allison's Candy Machine!"
puts " "
puts "How much money do you have?"

total = gets.chomp.to_f
total_money = "%.2f" % total

puts "$#{total_money}, huh? Check out your options below!"
puts " "
puts "A $1.00 Skittles"
puts "B $0.65 Hershey's Chocolate Bar"
puts "C $0.90 Snickers Bar"
puts "D $0.35 Gum"
puts "E $0.75 Reece's Peanut Butter Cup"

puts "What is your choice?"
response = gets.chomp.downcase

if response == "a"
	response_value = 1.00
elsif response == "b"
	response_value = 0.65
elsif response == "c"
	response_value = 0.90
elsif response == "d"
	response_value = 0.35
elsif response == "e"
	response_value = 0.75
else
	response_value = 0
end

change = total - response_value
change_display = "%.2f" % change

if response_value > total
 	puts "Sorry, $#{total_money} is not enough."
elsif response_value == 0
	puts "That is an invalid choice."
elsif response_value == total
	puts "Good choice! Enjoy your candy!"
else
  puts "Good choice! Please take your $#{change_display} change. Enjoy your candy!"
end
