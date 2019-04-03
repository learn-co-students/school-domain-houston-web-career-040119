# code here!

class School
  attr_accessor :student, :grade

  def initialize(school)
    @school = school
    @@roster = {}
  end

  def add_student (student,grade)
    if @@roster.keys.include? grade
      @@roster[grade] << student
    else
      @@roster[grade] = [student]
    end
  end

  def roster
    @@roster
  end

  def grade(grade)
    @@roster[grade]
  end

  def sort
    @@roster.each do |a,b|
      @@roster[a] = b.sort 
    end
  end

end
