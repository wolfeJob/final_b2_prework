class StudentsController < ApplicationController

def show
  @student = Student.find(params[:id])
end

def update
# @student = Student.find(params[:name])
# @course = Course.find(params[:course_id])
# @student.courses_students.create(student_id: @student.id, course_id: @course.id, grade: 100)
# redirect_to "/students/#{@student.id}"
end



end
