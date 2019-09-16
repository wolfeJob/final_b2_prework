# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CoursesStudent.destroy_all
Course.destroy_all
Student.destroy_all

scott = Student.create!(name: "Scott")
barb = Student.create!(name: "Barbara")
will = Student.create!(name: "William")
jim = Student.create!(name: "Jimbo")

math = Course.create!(name: "Math")
chemistry = Course.create!(name: "Chemistry")
cooking = Course.create!(name: "Cooking Class")


barb_courses = CoursesStudent.create!(student_id: barb.id, course_id: math.id, grade: 85)
jim_courses = CoursesStudent.create!(student_id: jim.id, course_id: math.id, grade: 1)
will_courses = CoursesStudent.create!(student_id: will.id, course_id: math.id, grade: 75)
scott_courses = CoursesStudent.create!(student_id: scott.id, course_id: math.id, grade: 95)
