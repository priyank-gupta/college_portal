class Student < ActiveRecord::Base
  belongs_to :grade_class

  validates :name, :role_no, presence: true
  validates :role_no, uniqueness: true
end
