## **Create a file named main.rb with the code**
```
1. | puts "Hello World" 
```

---

## **Create the Student class**
- Create a new file student.rb
- Attributes - id, name, birth_date, :email, :phone_number
- Create the following instance method
  - `save` - save the record to `@@record` class variable
  - `destroy` - destroy the record from `@@record`
  - `display` - simple string that represents the instance.

- Create the following class method
  - `all` - return all the records
  - `find` - return the first instance by id
  - `find_by_email` - returns the instance by email

---

## **Add a new student**
- In main.rb file, import the student class `require_relative 'student'`
- Remove the puts "Hello, World!" line.
- Write a script that prompts the user to input the attributes from the student class to add a new record
- id must be base the size of the records (starts from 1)
- If the student is added successfully, display the new added student
- If the student is added successfully, print a success message like `"Student added successfully!"`

---

## **Delete a student record**
- Modify the program to allow the user to choose between two actions like adding or deleting a student.
- If the user choose the delete action, prompt for the student's id to delete it frmo the records
- If the student is destroyed successfully, print a success message like `"Student destroyed successfully!"`

---

## **Repeat Actions Using a Loop**
- Use a while loop to keep the program running until the user decides to stop (exit keyword).
- After each action (add_student or delete_student), allow the user to perform another action or exit the program.

---

## **Create the Course class**
- Create a new file course.rb
- Attributes - id, name
- Create the following instance method
  - `save` - save the record to `@@record` class variable
  - `destroy` - destroy the record from `@@record`
  - `display` - simple string that represents the instance.
- Create the following class method
  - `all` - return all the records
  - `find` - return the first instance by id

---

## **Add a new Course**
- In main.rb file, import the cousrse class require_relative 'course'
- Modify the program to allow the user to choose between two actions like `student management` and `course management`. Under these management actions allow the user choose if they will add or delete a record
- Write a script that prompts the user to input the attributes from the course class to add a new record
- id must be base the size of the records (starts from 1)
- If the course is added successfully, display the new added course
- If the course is added successfully, print a success message like `"Course added successfully!"`

---

## **Delete a course record**
- Add a new action under the `course management`
- If the user choose the delete action, prompt for the course's id to delete it from the records.
- If the course is destroyed successfully, print a success message like `"Course destroyed successfully!"`

---

## **Create the Subject class**
- Create a new file subject.rb
- Attributes - id, name
- Create the following instance method
  - `save` - save the record to @@record class variable
  - `destroy` - destroy the record from @@record
  - `display` - simple string that represents the instance.
- Create the following class method
  - `all` - return all the records
  - `find` - return the first instance by id

---

## **Add a new Subject record**
- In main.rb file, import the subject class `require_relative 'subject'`
- Modify the program and a new prompt for `subject management`. Under these management allow the user to add a new record
- Write a script that prompts the user to input the attributes from the `subject` class to add a new record
- id must be base the size of the records (starts from 1)
- If the subject is added successfully, display the new added subject record
- If the subject is added successfully, print a success message like `"Subject added successfully!"`

---

## **Delete a Subject record**
- Add a new action under the `Subject management`
- If the user choose the delete action, prompt for the subject's id to delete it from the records.
- If the subject is destroyed successfully, print a success message like `"Subject destroyed successfully!"`

---

## **Create the Teacher class**
- Create a new file teacher.rb
- Attributes - id, name, birth_date, email, phone_number, department
- Create the following instance method
  - `save` - save the record to `@@record` class variable
  - `destroy` - destroy the record from `@@record`
  - `display` - simple string that represents the instance.
- Create the following class method
  - `all` - return all the records
  - `find` - return the first instance by id
  - `find_by_email` - returns the instance by email

---

## **Add a new teacher record**
- In main.rb file, import the teacher class `require_relative 'teacher'`
- Modify the program and a new prompt for `teacher management`. Under these management allow the user to add a new record
- Write a script that prompts the user to input the attributes from the teacher class to add a new record
- id must be base the size of the records (starts from 1)
- If the teacher is added successfully, print the new added teacher record
- If the teacher is added successfully, print a success message like `"Teacher added successfully!"`

---

## **Delete a Teacher record**
- Add a new action under the `teacher management`
- If the user choose the delete action, prompt for the teacher's id to delete it from the records.
- If the teacher is destroyed successfully, print a success message like `"Teacher destroyed successfully!"`

---

## **Add display for records**
- Add a new action to each management section (e.g., student, course, subject, teacher) to display its records.

---

## **Add soft delete**
- Add a `deleted_at` attribute to the following classes: `Student`, `Course`, `Subject`, and `Teacher`.
- Modify the destroy method to update the `deleted_at` attribute with `Time.now` instead of permanently removing the records.
- Modify the all method to return only records where `deleted_at` is `nil`.
- Ensure that your display does not include any deleted records.

---

## **Add Update Functionality for Each Record**
- Modify the `save` method so that it can either update an existing record or save a new one.
- Add a new action for each management section that allows users to edit records.
- Ensure that you only update the existing record instead of replacing it with a new one.
- Make sure the creation of new records still works.
  - Hint: You can use the `id` attribute to check if an instance already exists.
- If the record is updated successfully, print a success message like: `#{class} updated successfully!`

---

## **Let user to pick the student course**
- Modify the `Student` class to add a new attribute: `course_id`.
- Update the "add student" action to:
  - Display the available courses.
  - Allow the user to input the `course_id`.
- Update the display action in student management to show the course name for each student by using the `Course` class.

---

## **Let each management continuous**
- Modify each management and add a new loop
  - Prompt the actions for that management
  - Add a `back to school management` actions and return to the main prompt.

---

## **Create the CourseSubject class**
- Create a new file course_subject.rb
- Attributes - id, course_id, subject_id
- Create the following instance method
  - `save` - save the record to `@@record` class variable
  - `destroy` - destroy the record from `@@record`
  - `display` - simple string that represents the instance.
- Create the following class method
  - `all` - return all the records
  - `find` - return the first instance by id

---

## **Let user bind course to subject**
- In the `course management`, modify the `display` action and allow user to input the `course_id` and display additional prompts.
  - Display the course details.
  - Add add subjects action to allow the user `add new subjects`
    - Display the available courses.
  - Add `remove subjects` action to allow the user subjects
    - Display the course subjects
  - Add a new loop to allow the user to keep switching

---

## **Modify course display action**
- Modify the `Course` class and add a new instance methods:
  - Add the `students` method, this method will return the collection of student object belongs to this course
  - Add the `subjects` method, this method will return the collection of subject object belongs to this course
- In the `course management -> display`, allow user to have more actions like:
  - Add a new prompt that will allow the user to view all the students belongs to this course
  - Add a new prompt that will allow the user to view all the subjects belongs to this course

---

## **Create the StudentSubject class**
- Create a new file `student_subject.rb`
- Attributes - id, student_id, subject_id
- Create the following instance method
  - `save` - save the record to `@@record` class variable
  - `destroy` - destroy the record from `@@record`
  - `display` - simple string that represents the instance.
- Create the following class method
  - `all` - return all the records
  - `find` - return the first instance by id

---

## **Let students to enroll subjects**
- When we are creating a new student, we assign them to a course and those course have subjects assign those to the new student using the `StudentSubject` class.

---

## **Show Student Subjects**
- Add a `subjects` instance method in the `Student` class and return a collection of subjects.
- In the `student_management`, modify the display action and allow user to input the `student_id` and display additional prompts.
  - Display the student details with the enrolled subjects .

---

## **Modify the student and teacher classs**
- Create a new class and let the `Student` and `Teacher` class to inherit the new class