class CoursesController < ApplicationController

def show
  @course = Course.find(params[:id])
end

def create
  @student = Student.all[0]
  @course = Course.all[1]
  @student.courses_students.create(student_id: @student.id, course_id: @course.id, grade: 100)
  redirect_to "/students/#{@student.id}"
# pry
end

private

def student_params
params.permit(:name)
end

end
