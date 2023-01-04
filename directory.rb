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

@students = []
def print_menu
#1. print the menu and ask the user what it wants to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  #3. do what the user has asked
  case selection
    when "1"
      students = input_students
    when "2"
      show_students
    when "9"
      exit #this will cause the program to terminate
    else
      puts "I don't know what you meant, please try again."
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def input_students
  puts "Enter the name of student"
  puts "To exit, hit return twice"
  name = gets.chomp
    while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
    end
end

def print_header
  puts "The students of the Villian Academy"
  puts "------------"
end

def print_students_list
  require 'set'
  set = Set.new
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)" 
end
end

#Here we print the total number of students in the academy
def print_footer
  print "Overall, we have #{@students.count} great students"
end

interactive_menu
