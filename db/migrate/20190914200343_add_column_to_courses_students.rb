class AddColumnToCoursesStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :courses_students, :grade, :float
  end
end
