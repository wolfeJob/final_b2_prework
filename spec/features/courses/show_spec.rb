require 'rails_helper'

describe "As a user I can see a course show page, that has courses name
          and each student in the course listed from highest to lowest" do

before(:each) do
  @scott = Student.create!(name: "Scott")
  @barb = Student.create!(name: "Barbara")
  @will = Student.create!(name: "William")
  @jim = Student.create!(name: "Jimbo")
  @math = Course.create!(name: "Math")
  @barb_courses = CoursesStudent.create!(student_id: @barb.id, course_id: @math.id, grade: 85)
  @jim_courses = CoursesStudent.create!(student_id: @jim.id, course_id: @math.id, grade: 1)
  @will_courses = CoursesStudent.create!(student_id: @will.id, course_id: @math.id, grade: 75)
  @scott_courses = CoursesStudent.create!(student_id: @scott.id, course_id: @math.id, grade: 95)
end

it "User can see data from courses about students" do
  visit "/courses/#{@math.id}"
  # save_and_open_page
  expect(page).to have_content("Course Name: Math")
  within "#course-#{@math.id}" do
    # save_and_open_page
    expect(page).to have_content(@scott.name)
    expect(page).to have_content(@barb.name)
    expect(page).to have_content(@will.name)
    expect(page).to have_content(@jim.name)
  end
end
end
