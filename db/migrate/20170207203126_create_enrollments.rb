class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :course, index: true
      t.references :student, index: true
    end
    add_foreign_key :enrollments, :courses
    add_foreign_key :enrollments, :students
  end
end
