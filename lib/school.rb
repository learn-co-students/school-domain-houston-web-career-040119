# code here!
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end

    @roster[grade].sort

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.values.each do |students|
      students.sort!
    end

    @roster
  end


end

class Stuident
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end
