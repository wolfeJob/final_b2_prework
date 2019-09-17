require 'rails_helper'
describe 'When I visit a Course page' do
  before(:each) do
    @scott = Student.create!(name: "Scott")
    @math = Course.create!(name: "Math")
    @scott_courses = CoursesStudent.create!(student_id: @scott.id, course_id: @math.id, grade: 95 )
  end

  it "I can unenroll a student from course" do
    visit "/courses/#{@math.id}"
    click_on "Unenroll"
    expect(current_path).to eq("/students/#{@scott.id}")
    expect(page).to_not have_content(@math.name)
    save_and_open_page
end
end
