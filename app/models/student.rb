class Student < ApplicationRecord
validates_presence_of :name
has_many :courses_students
has_many :courses, through: :courses_students

end
