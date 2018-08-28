# List of students in the academy
# Students are now placed in a list (Array)
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create and empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
    students.each do |student|
      puts "#{students.index(student) + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
# finally, we print the total number of students
def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end
#These new methods can now be called so they are in action
students = input_students
print_header
print(students)
print_footer(students)