class CoursesController < ApplicationController

def show
  @course = Course.find(params[:id])
end

def create
  desired_name = params[:name]
  @student = Student.all.find do |student|
    desired_name = student.name
  end
  # @student = Student.all[0]   used this at first but now actually using the name passed in
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
