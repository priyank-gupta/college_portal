class Subject < ActiveRecord::Base
  has_many :grade_class_subjects
  has_many :grade_classes, through: :grade_class_subjects

  validates :name, presence: true
end
