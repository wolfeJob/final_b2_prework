require 'rails_helper'
describe 'A student show page' do
  before(:each) do
    @scott = Student.create!(name: "Scott")
    @math = Course.create!(name: "Math")
    @chemistry = Course.create!(name: "Chemistry")
    @scott_courses = CoursesStudent.create!(student_id: @scott.id, course_id: @math.id, grade: 95 )
    @scott_courses_2 = CoursesStudent.create!(student_id: @scott.id, course_id: @chemistry.id, grade: 99 )
  end

  it 'can see student contents: name, course, grade' do
  visit "/students/#{@scott.id}"
  # save_and_open_page

  expect(page).to have_content(@scott.name)
  expect(page).to have_content("Course: Math")
  expect(page).to have_content("Grade: 95.0")
  expect(page).to have_content("Course: Chemistry")
  expect(page).to have_content("Grade: 99.0")
end
end
