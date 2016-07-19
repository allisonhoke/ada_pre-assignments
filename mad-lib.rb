puts 'Welcome to the "Send Help" letter generator! Please enter some information below to customize your letter:'

#get user input to complete the Mad Lib
puts "Name of a family member"
family_member = gets.chomp.capitalize
puts "Your name"
name = gets.chomp.capitalize
puts "Noun"
location = gets.chomp
puts "Famous location"
landmark_split = gets.chomp.split #split the user input into an array to capitalize location
landmark = String(nil) #create empty string to display amended words
landmark_split.each do |x| #loop through array created in line 11
	landmark << " " + x.capitalize #capitalize each element in the array and push to empty string from line 12 with space between
end
puts "Adjective"
adjective = gets.chomp
puts "Occupation"
occupation = gets.chomp
puts "Number"
money = gets.chomp
puts "Noun"
object = gets.chomp
puts "Number"
amount = gets.chomp
puts "Plural noun"
tool = gets.chomp

#substitue user input into the Mad Lib to create their unique letter
result = "Hi, #{family_member}. It's me, #{name}, writing to you from inside a/an #{location} at#{landmark}. Please don't ask how I got here, it is a #{adjective} story. I need you to call the #{occupation} immediately to rescue me. Please give her $#{money}, a/an #{object}, and #{amount} #{tool}. She will know what to do, we have prepared for this moment. See you soon. Love, #{name}."

puts result
