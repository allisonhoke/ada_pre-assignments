# create arrays
student_names = Array.new
id_numbers = Array.new
email_addresses = Array.new

5.times do
  puts "Please enter the student's first and last name"
  full_name = gets.chomp.upcase
  student_names << full_name
end

5.times do
  id = rand(111111..999999).to_s
  id_numbers << id
end

(0..4).each do |i|
  name_split = student_names[i].split
  first_name = name_split[0]
  last_name = name_split[1]
  first_initial = first_name[0]
  number = id_numbers[i]
  last_three = number[3..5]
  email = first_initial + last_name + last_three + "@adadevelopersacademy.org"
  email_addresses << email
end

# i = 0
# 5.times do
#   name_split = student_names[i].split
#   first_name = name_split[0]
#   last_name = name_split[1]
#   first_initial = first_name[0]
#   number = id_numbers[i]
#   last_three = number[3..5]
#   email = first_initial + last_name + last_three + "@adadevelopersacademy.org"
#   email_addresses << email
#   i += 1
# end

puts email_addresses
