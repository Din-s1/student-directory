def input_students
  puts "Please enter the name of the student followed then hit enter and enter their hobby"
  puts "To finish, just hit return thrice"
  students = []
  name, cohort, hobby = gets.chomp, gets.chomp, gets.chomp
  while !name.empty?
    cohort = "Novembuary" if cohort == ""
    hobby = "Fun" if hobby == ""
    students << {name: name.capitalize, cohort: cohort, hobby: hobby}
    puts "Now we have #{students.count} students"
    name, cohort, hobby = gets.chomp, gets.chomp, gets.chomp
  end
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
      puts "#{iterator + 1}. #{students[iterator][:name]}, #{students[iterator][:hobby]}, (#{students[iterator][:cohort]} cohort)"
      iterator += 1
    end
  end
end

=begin
an attempt to create a method that gets user input and
 selects the hash value that is a typo and needs to be replaced
 *approach: will get user input to iterate through and match value then using select
 will replace the original value. CI thought... what if we have the same name twice
 John Smith?
def typo
  puts "Please enter the typo as shown in the list"
  mistake = gets.chomp
  students.replace {|typo| typo[mistake] }
end
=end

def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

students = input_students
print_header
group
print(students)
print_footer(students)