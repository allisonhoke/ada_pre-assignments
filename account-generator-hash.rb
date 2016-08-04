# create arrays
student_data = []

puts "How many students would you like to create a record for?"
census = gets.chomp.to_i

census.times do
  # create a hash to store the data
  student = {}

  # get the student's name
  puts "Please enter the student's first and last name"
  full_name = gets.chomp.upcase
  #store this in the name key of their hash
  student["name"] = full_name

  # create a student id number
  id = rand(111111..999999).to_s
  # store this in the id key of their hash
  student["ID"] = id

  # create an email address
  # split the name to get first initial and last name
  name_split = full_name.split
  first_name = name_split[0]
  last_name = name_split[1]
  first_initial = first_name[0]

  # get the last three digits of the id number
  last_three = id[3..5]

  # create the email address
  email_address = first_initial + last_name + last_three + "@adadevelopersacademy.org"
  #store the email in the hash
  student["email"] = email_address

  student_data << student
end

puts student_data
