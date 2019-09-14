class Student < ApplicationRecord
validates_presence_of :name, :grade
has_many :courses_students
has_many :courses, through: :courses_students

end
