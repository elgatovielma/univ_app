class CreateStudentCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :student_courses do |t|
      # For convention Rails will know these are FKs
      t.integer :student_id
      t.integer :course_id
      t.timestamps
    end
  end
end
