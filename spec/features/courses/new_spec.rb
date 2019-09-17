require 'rails_helper'
describe 'When I visit course show page I can enroll a student' do
  before(:each) do
    @scott = Student.create!(name: "Scott")
    @math = Course.create!(name: "Math")
    @art = Course.create!(name: "art")
    @chemistry = Course.create!(name: "Chemistry")
    @scott_courses = CoursesStudent.create!(student_id: @scott.id, course_id: @math.id, grade: 95 )
    @scott_courses_2 = CoursesStudent.create!(student_id: @scott.id, course_id: @chemistry.id, grade: 99 )
  end

  it "I see a form that enrolls a student from that students first name" do
    visit "/courses/#{@art.id}"

    fill_in :name, with: "#{@scott.name}"

    click_on "Submit"

    expect(current_path).to eq("/students/#{@scott.id}")
    expect(page).to have_content(@art.name)
    save_and_open_page
    
end
end
