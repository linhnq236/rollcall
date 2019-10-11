class Course < ApplicationRecord
  belongs_to :teacher
  has_many :usercourses
  has_many :timetables

  private
  def self.search(search_word)
    pattern = "%#{search_word}%"
    where("courses.course_name LIKE ? OR teachers.teacher_name LIKE ?", pattern, pattern )
  end
end
