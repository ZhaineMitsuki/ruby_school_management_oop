require_relative 'student'
require_relative 'course'
require_relative 'subject'
require_relative 'teacher'

def add_student
  print "Enter your name: "
  name = gets.chomp
  print "Enter your birthday: "
  birthday = gets.chomp
  print "Enter your email: "
  email = gets.chomp
  print "Enter your phone number: "
  phone = gets.chomp

  student = Student.new(name, birthday, email, phone)

  existing = Student.find_by_email(email)
  if existing
    puts "Student already exists!. Student failed to be added."
  else
    student.save
    puts "Student added successfully!"
  end
end

def delete_student
  print "Enter the student id you want to delete: "
  id = gets.chomp.to_i

  student = Student.find(id)
  if student
    student.destroy
    puts "Student destroyed successfully!"
  else
    puts "Student not found."
  end
end

def edit_student
  print "Enter the student id you want to edit: "
  id = gets.chomp.to_i

  student = Student.find(id)
  if student
    print "Enter new name (leave blank to keep '#{student.name}'): "
    name = gets.chomp
    student.name = name unless name.empty?
    print "Enter new birthday (leave blank to keep '#{student.birth_date}'): "
    birthday = gets.chomp
    student.birth_date = birthday unless birthday.empty?
    print "Enter new email (leave blank to keep '#{student.email}'): "
    email = gets.chomp
    student.email = email unless email.empty?
    print "Enter new phone number (leave blank to keep '#{student.phone_number}'): "
    phone = gets.chomp
    student.phone_number = phone unless phone.empty?
    student.save
    puts "Student updated successfully!"
  else
    puts "Student with ID #{id} not found."
  end
end

def display_student
  students = Student.all

  if students.empty?
    puts "No student records found."
  else
    students.each_with_index do |student, index|
      index += 1
      puts "STUDENT RECORD #{index}"
      puts "id          : #{student.id}"
      puts "Name        : #{student.name}"
      puts "Birth Date  : #{student.birth_date}"
      puts "Email       : #{student.email}"
      puts "Phone No.   : #{student.phone_number}"
      puts "\n"
    end
  end
end

def student_management
  action = ""

  while action != "exit"
    puts "\n--- Student Management ---"
    puts "1. Add student"
    puts "2. Delete student"
    puts "3. Display student records"
    puts "4. Edit student"
    puts "Type 'exit' to quit"
    print "Enter your choice: "
    action = gets.chomp

    case action
    when "1"
      add_student
    when "2"
      delete_student
    when "3"
      display_student
    when "4"
      edit_student
    when "exit"
      puts "Going back to school management"
    else
      puts "Invalid option. Please enter 1, 2, or 'exit'."
    end
  end
end

def add_course
  print "Enter the course name: "
  course_name = gets.chomp

  course = Course.new(course_name)

  existing = Course.all.find { |course| course.name.downcase == course_name.downcase }
  if existing
    puts "Course already exists!. Course failed to be added."
  else
    course.save
    puts "Course added successfully!"
  end
end

def delete_course
  print "Enter the course id you want to delete: "
  id = gets.chomp.to_i

  course = Course.find(id)
  if course
    course.destroy
    puts "Course destroyed successfully!"
  else
    puts "Course not found."
  end
end

def edit_course
  print "Enter the course id you want to edit: "
  id = gets.chomp.to_i

  course = Course.find(id)
  if course
    print "Enter new name (leave blank to keep '#{course.name}'): "
    name = gets.chomp
    course.name = name unless name.empty?
    course.save
    puts "Course updated successfully!"
  else
    puts "Course with ID #{id} not found."
  end
end

def display_course
  course = Course.all

  if course.empty?
    puts "No course records found."
  else
    course.each_with_index do |course, index|
      index += 1
      puts "COURSE RECORD #{index}"
      puts "id          : #{course.id}"
      puts "Name        : #{course.name}"
      puts "\n"
    end
  end
end

def course_management
  action = ""

  while action != "exit"
    puts "\n--- Course Management ---"
    puts "1. Add course"
    puts "2. Delete course"
    puts "3. Display course records"
    puts "4. Edit course"
    puts "Type 'exit' to quit"
    print "Enter your choice: "
    action = gets.chomp

    case action
    when "1"
      add_course
    when "2"
      delete_course
    when "3"
      display_course
    when "4"
      edit_course
    when "exit"
      puts "Going back to school management"
    else
      puts "Invalid option. Please enter 1, 2, or 'exit'."
    end
  end
end

def add_subject
  print "Enter the subject name: "
  subject_name = gets.chomp

  subject = Subject.new(subject_name)

  existing = Subject.all.find { |subject| subject.name.downcase == subject_name.downcase }
  if existing
    puts "Subject already exists!. Subject failed to be added."
  else
    subject.save
    puts "Subject added successfully!"
  end
end

def delete_subject
  print "Enter the subject id you want to delete: "
  id = gets.chomp.to_i

  subject = Subject.find(id)
  if subject
    subject.destroy
    puts "Subject destroyed successfully!"
  else
    puts "Subject not found."
  end
end

def edit_subject
  print "Enter the subject id you want to edit: "
  id = gets.chomp.to_i

  subject = Subject.find(id)
  if subject
    print "Enter new name (leave blank to keep '#{subject.name}'): "
    name = gets.chomp
    subject.name = name unless name.empty?
    subject.save
    puts "Subject updated successfully!"
  else
    puts "Subject with ID #{id} not found."
  end
end

def display_subject
  subject = Subject.all

  if subject.empty?
    puts "No subject records found."
  else
    subject.each_with_index do |subject, index|
      index += 1
      puts "SUBJECT RECORD #{index}"
      puts "id          : #{subject.id}"
      puts "Name        : #{subject.name}"
      puts "\n"
    end
  end
end

def subject_management
  action = ""

  while action != "exit"
    puts "\n--- Subject Management ---"
    puts "1. Add subject"
    puts "2. Delete subject"
    puts "3. Display subject records"
    puts "4. Edit subject"
    puts "Type 'exit' to quit"
    print "Enter your choice: "
    action = gets.chomp

    case action
    when "1"
      add_subject
    when "2"
      delete_subject
    when "3"
      display_subject
    when "4"
      edit_subject
    when "exit"
      puts "Going back to school management"
    else
      puts "Invalid option. Please enter 1, 2, or 'exit'."
    end
  end
end

def add_teacher
  print "Enter the name: "
  name = gets.chomp
  print "Enter the birthday: "
  birthday = gets.chomp
  print "Enter the email: "
  email = gets.chomp
  print "Enter the phone number: "
  phone = gets.chomp
  print "Enter the department: "
  department = gets.chomp

  teacher = Teacher.new(name, birthday, email, phone, department)

  existing = Teacher.find_by_email(email)
  if existing
    puts "Teacher already exists!. Teacher failed to be added."
  else
    teacher.save
    puts "Teacher added successfully!"
  end
end

def delete_teacher
  print "Enter the teacher id you want to delete: "
  id = gets.chomp.to_i

  teacher = Teacher.find(id)
  if teacher
    teacher.destroy
    puts "Teacher destroyed successfully!"
  else
    puts "Teacher not found."
  end
end

def edit_teacher
  print "Enter the teacher id you want to edit: "
  id = gets.chomp.to_i

  teacher = Teacher.find(id)
  if teacher
    print "Enter new name (leave blank to keep '#{teacher.name}'): "
    name = gets.chomp
    teacher.name = name unless name.empty?
    print "Enter new birthday (leave blank to keep '#{teacher.birth_date}'): "
    birthday = gets.chomp
    teacher.birth_date = birthday unless birthday.empty?
    print "Enter new email (leave blank to keep '#{teacher.email}'): "
    email = gets.chomp
    teacher.email = email unless email.empty?
    print "Enter new phone number (leave blank to keep '#{teacher.phone_number}'): "
    phone = gets.chomp
    teacher.phone_number = phone unless phone.empty?
    print "Enter new department (leave blank to keep '#{teacher.department}'): "
    department = gets.chomp
    teacher.department = department unless department.empty?
    teacher.save
    puts "Teacher updated successfully!"
  else
    puts "Teacher with ID #{id} not found."
  end
end

def display_teacher
  teacher = Teacher.all

  if teacher.empty?
    puts "No teacher records found."
  else
    teacher.each_with_index do |teacher, index|
      index += 1
      puts "TEACHER RECORD #{index}"
      puts "id          : #{teacher.id}"
      puts "Name        : #{teacher.name}"
      puts "Birth Date  : #{teacher.birth_date}"
      puts "Email       : #{teacher.email}"
      puts "Phone No.   : #{teacher.phone_number}"
      puts "Department  : #{teacher.department}"
      puts "\n"
    end
  end
end

def teacher_management
  action = ""

  while action != "exit"
    puts "\n--- Teacher Management ---"
    puts "1. Add teacher"
    puts "2. Delete teacher"
    puts "3. Display teacher records"
    puts "4. Edit teacher"
    puts "Type 'exit' to quit"
    print "Enter your choice: "
    action = gets.chomp

    case action
    when "1"
      add_teacher
    when "2"
      delete_teacher
    when "3"
      display_teacher
    when "4"
      edit_teacher
    when "exit"
      puts "Going back to school management"
    else
      puts "Invalid option. Please enter 1, 2, or 'exit'."
    end
  end
end

def management_options
  option = ""

  while option != "exit"
    puts "\n--- School Management ---"
    puts "1. Student Management"
    puts "2. Course School"
    puts "3. Subject Management"
    puts "4. Teacher Management"
    puts "Type 'exit' to quit"
    print "Enter your choice: "
    option = gets.chomp

    case option
    when "1"
      student_management
    when "2"
      course_management
    when "3"
      subject_management
    when "4"
      teacher_management
    when "exit"
      puts "Exiting program. Goodbye!"
    else
      puts "Invalid option. Please enter 1, 2, or 'exit'."
    end
  end
end

management_options