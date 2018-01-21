class CreateGradeClassSubjects < ActiveRecord::Migration
  def change
    create_table :grade_class_subjects do |t|
      t.integer :grade_class_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
