require 'rails_helper'

RSpec.describe Course do
  describe 'Relationships' do
    it {should have_many(:students).through(:courses_students)}
  end

  describe 'Validations' do
    it {should validate_presence_of :name}
  end

  describe "course_students_by_grade" do
    xit "returns students ordered by grade for specific class" do
      scott = Student.create!(name: "Scott")
      barb = Student.create!(name: "Barbara")
      will = Student.create!(name: "William")
      jim = Student.create!(name: "Jimbo")
      math = Course.create!(name: "Math")
      barb_courses = CoursesStudent.create!(student_id: barb.id, course_id: math.id, grade: 85)
      jim_courses = CoursesStudent.create!(student_id: jim.id, course_id: math.id, grade: 3)
      will_courses = CoursesStudent.create!(student_id: will.id, course_id: math.id, grade: 75)
      scott_courses = CoursesStudent.create!(student_id: scott.id, course_id: math.id, grade: 95)

      expect(math.course_students_by_grade).to eq([scott_courses,barb_courses,will_courses,jim_courses])
    end
  end

end
