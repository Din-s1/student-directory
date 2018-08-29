# List of students in the academy
# Students are now placed in a list (Array)
def input_students
  puts "Please enter the name of the student followed then hit enter and enter their hobby"
  puts "To finish, just hit return thrice"
  #create and empty array
  students = []
  #get the first name
  name = gets.chomp
  hobby = gets.chomp

  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november, hobby: hobby}
    puts "Now we have #{students.count} students"
    
    #get another name from the user
    name = gets.chomp
    hobby = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------".center(31)
end

def print(students)
  iterator = 0
  while students.select! { |val| val[:name].start_with?("S") && (val[:name].length < 12)}
    until iterator == students.length
      puts "#{iterator + 1}. #{students[iterator][:name]} #{students[iterator][:hobby]} (#{students[iterator][:cohort]} cohort)"
      iterator += 1
    end
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