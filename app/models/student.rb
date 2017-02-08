class Student < ActiveRecord::Base
  has_many :addresses
  has_many :enrollments
  has_many :courses, through: :enrollments
  # validates_presence_of :name
  # validates_uniqueness_of :name
  validates :name, presence: true, uniqueness: true
end
