class CreateGradeClasses < ActiveRecord::Migration
  def change
    create_table :grade_classes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
