class GradeClass < ActiveRecord::Base
  has_many :students
  has_many :grade_class_subjects
  has_many :subjects, through: :grade_class_subjects

  def subject_names
    subjects.collect {|sub| sub.name }
  end
end
