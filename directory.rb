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
puts "The students of the Villian Academy"
puts "------------"
students.each do |student|
    puts student
end
#Here we print the total number of students in the academy
print "Overall, we have #{students.count} great students"