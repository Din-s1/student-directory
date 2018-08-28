# List of students in the academy
# Students are now placed in a list (Array)
students = [
   "Dr. Hannibal Lecter"
   "Darth Vader"
   "Nurse Ratched"
   "Michael Corleone"
   "Alex DeLarge"
   "The Wicked Witch of the West"
   "Terminator"
   "Freddy Krueger"
   "The Joker"
   "Joffrey Baratheon"
   "Norman Bates"
]
# Now we print the list
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"