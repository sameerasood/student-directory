# we put the srudent names in an array
students = [
"Dr. Hannibal Lecter",
"Darth Vadar",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]

def print_header
puts "The students of the Villian Academy"
puts "------------"
end

def print_names(names)
names.each do |name|
    puts name
end
end
#Here we print the total number of students in the academy

def print_footer(names)
print "Overall, we have #{names.count} great students"
end

print_header
print_names(students)
print_footer(students)
