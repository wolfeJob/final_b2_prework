class CoursesController < ApplicationController

def show
  @course = Course.find(params[:id])
end

def create
  desired_name = params[:name]
  @student = Student.all.find do |student|
    desired_name = student.name
  end
  # @student = Student.all[0] red greening, used this at first but now actually using the name passed in.
  @course = Course.all[1]
  @student.courses_students.create(student_id: @student.id, course_id: @course.id, grade: 100)
  redirect_to "/students/#{@student.id}"
# pry
end


def destroy
  desired_name = params[:name]
  @student = Student.all.find do |student|
    desired_name = student.name
  end
  @student.courses[0].destroy
redirect_to "/students/#{@student.id}"
end
end
