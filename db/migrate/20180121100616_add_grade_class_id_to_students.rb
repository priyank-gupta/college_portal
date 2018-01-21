class AddGradeClassIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :grade_class_id, :integer
  end
end
