class CoursesController < ApplicationController

def show
  @course = Course.find(params[:id])
end

def create
  desired_name = params[:name]
  @student = Student.all.detect{|student| desired_name == student.name}
  a = @student.courses
  b = Course.all
  desired_course = (a-b) | (b-a)
  #well, I did this ONLY because we are adding 1 course at a time
  #AND it would only make sense to enroll a student in a course that a student was not already in.
  #and because I cant remember the "correct" way to do it off the top of my head :( 
  @course = desired_course
  @student.courses_students.create(student_id: @student.id, course_id: desired_course[0].id, grade: 100)
  redirect_to "/students/#{@student.id}"
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
