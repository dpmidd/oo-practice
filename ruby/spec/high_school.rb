class HighSchool

  attr_reader :vacancies, :students, :drop_out_list, :alumni

  def initialize(vacancies)
    @vacancies = vacancies
    @students = []
    @drop_out_list = []
    @alumni = []
  end

  def enroll(student)
    @vacancies -= 1
    @students << student
  end

  def drop_out(student)
    @students.delete(student)
    @drop_out_list << student
  end

  def graduate(student)
    @alumni << student
  end
end
