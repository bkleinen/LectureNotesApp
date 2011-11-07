class CreateLectureNotes < ActiveRecord::Migration
  def change
    create_table :lecture_notes do |t|
      t.datetime :date
      t.string :notes
      t.string :methods

      t.timestamps
    end
  end
end
