# we put the srudent names in a nested array, along with the month of their cohort as a symbol.
students = [
{name: "Dr. Hannibal Lecter",cohort: :november},
{name: "Darth Vadar", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge",cohort: :november},
{name: "The Wicked Witch of the West",cohort: :november},
{name: "Terminator",cohort: :november},
{name: "Freddy Krueger",cohort: :november},
{name: "The Joker",cohort: :november},
{name: "Joffrey Baratheon",cohort: :november},
{name: "Norman Bates",cohort: :november}
]

def print_header
puts "The students of the Villian Academy"
puts "------------"
end

def print_names(students)
students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)" 
end
end
#Here we print the total number of students in the academy

def print_footer(students)
print "Overall, we have #{students.count} great students"
end

print_header
print_names(students)
print_footer(students)
