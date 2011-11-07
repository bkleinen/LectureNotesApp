class AddCourseIdToLectureNote < ActiveRecord::Migration
  def change
    add_column :lecture_notes, :course_id, :integer
  end
end
