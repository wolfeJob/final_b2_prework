class Course < ApplicationRecord
validates_presence_of :name
has_many :courses_students
has_many :students, through: :courses_students 
end
