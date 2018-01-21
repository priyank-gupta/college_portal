class GradeClassSubject < ActiveRecord::Base
  belongs_to :grade_class
  belongs_to :subject
end
