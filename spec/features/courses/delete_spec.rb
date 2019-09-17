require 'rails_helper'
describe 'When I visit a Course page' do
  before(:each) do
    @scott = Student.create!(name: "Scott")
    @math = Course.create!(name: "Math")
    @art = Course.create!(name: "art")
    @chemistry = Course.create!(name: "Chemistry")
    @scott_courses = CoursesStudent.create!(student_id: @scott.id, course_id: @math.id, grade: 95 )
    @scott_courses_2 = CoursesStudent.create!(student_id: @scott.id, course_id: @chemistry.id, grade: 99 )
  end
end 
