class Course < ApplicationRecord
validates_presence_of :name
has_many :courses_students
has_many :students, through: :courses_students


def course_students_by_grade
  self.courses_students.order(grade: :desc)
  # pry
end

end
