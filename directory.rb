@students = []
def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the student list"
  puts "4. Load the student list"
  puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
    when "1"
      students = input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      try_load_students
    when "9"
      puts "Goodbye!"
      exit #this will cause the program to terminate
    else
      puts "I don't know what you meant, please try again."
  end
end

def input_students
  puts "Enter the name of student"
  puts "To exit, hit return twice"
  add_name
end

def add_name
  name = STDIN.gets.chomp
  while !name.empty? do
    add_students(name, :november)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end

def add_students(name, cohort)
  @students << {name: name, cohort: cohort}
end

def show_students
  print_header
  print_students_list
  print_footer
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

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  puts "Enter filename to save"
  filename = gets.chomp
    if File.exist?(filename) #check if the filename exists
      save_file(filename)
    else
      filename = "students.csv"
      save_file(filename)
    end
end

def save_file(filename)
  require 'csv'
  CSV.open("/Users/waliahimanshu/Makers/student-directory/students.csv", "wb") do |csv|
    csv << @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      # file.write(student_data.join (","))
      end
    end
end

def try_load_students(filename = "students.csv")
  puts "Enter filename"
  filename = gets.chomp
  if File.exist?(filename) #check if the filename exists
    read_file(filename)
  else
    filename = "students.csv"
    read_file(filename)
  end
end

def read_file(filename)
  require 'csv'
  load_array = []
  load_array = CSV.foreach("/Users/waliahimanshu/Makers/student-directory/students.csv", "r") do |row|
    name, cohort = row
    load_array << row
    add_students(name, cohort)
end
  puts "#{@students.count} students loaded from the #{filename}"
end

interactive_menu
