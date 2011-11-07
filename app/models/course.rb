class Course < ActiveRecord::Base
  has_many :lecture_notes
end
