# we put the srudent names in a nested array, along with the month of their cohort as a symbol.
# students = [
# {name: "Dr. Hannibal Lecter",cohort: :november},
# {name: "Darth Vadar", cohort: :november},
# {name: "Nurse Ratched", cohort: :november},
# {name: "Michael Corleone", cohort: :november},
# {name: "Alex DeLarge",cohort: :november},
# {name: "The Wicked Witch of the West",cohort: :november},
# {name: "Terminator",cohort: :november},
# {name: "Freddy Krueger",cohort: :november},
# {name: "The Joker",cohort: :november},
# {name: "Joffrey Baratheon",cohort: :november},
# {name: "Norman Bates",cohort: :november}
# ]

def input_students
    puts "Enter the name of student"
    puts "To exit, hit return twice"
    students = []
    name = gets.chomp
    #Add cohort, country of birth"
while !name.empty? do
    puts "Enter cohort"
    cohort = gets.chomp
    puts "Enter country of birth"
    country = gets.chomp
    if cohort.empty? #cohort default value in case cohort is empty
        students << {name: name, cohort: "November", country: country}
    else
    students << {name: name, cohort: cohort, country: country}
    end
    if students.length == 1
        puts "Now we have #{students.count} student" #
    else
    puts "Now we have #{students.count} students"
    end
    if name.empty? || country.empty?
    break
    end
    puts "Enter name"
    name = gets.chomp
end
students
end

def print_header
puts "The students of the Villian Academy"
puts "------------"
end

#print the students grouped by cohorts
def print_names(students)
require 'set'
set = Set.new
students.each do |student|
set << student[:cohort]
end
set.each do |cohort_value|#loop through set
  puts cohort_value
    students.each do |student| #loop through match
      if student[:cohort] == cohort_value
      puts "Name: #{student[:name]}"
      puts "Birth country: #{student[:country]}"
      end
    end
end
end


#print all student names with while loop
# def print_names(students)
#     i=0
# while i<students.length
#     puts "#{students[i][:name]} (#{students[i][:cohort]} cohort) Birth country: #{students[i][:country]}".center(50)
#     i += 1
# end   
# end

#print student names with each_with_index
# students.each_with_index do |student, index|
#     puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)" 
# end
# end


#Here we print the total number of students in the academy
def print_footer(students)
puts "Overall, we have #{students.count} great students.".center(100)
end

#To print name with specific letter
def chosen_letter(students)
    puts "Enter a letter"
    letter = gets.chomp
    students.each do |student|
      if student[:name].chr == letter
      puts "#{student[:name]}"
      end
    end
end
# only print the students whose name is shorter than 12 characters.

def student_length(students)
    students.each do |student|
        if student[:name].length < 12
            puts "The names shorter than 12 characters are: #{student[:name]}"
        end
    end
end

students = input_students
print_header
print_names(students)
print_footer(students)
chosen_letter(students)
student_length(students)
