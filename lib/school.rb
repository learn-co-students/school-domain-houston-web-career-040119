# code here!
require 'pry'
class School
    attr_accessor :roster
    
    def initialize(name)
        @school = name 
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        
        @roster[grade] << name
        #binding.pry
    end

    def grade(student_grade)
        @roster[student_grade]

    end

    def sort
        new_hash = {}
        @roster.sort.to_h.each do |grade, name|
            new_hash[grade] = name.sort
        end
        new_hash
    end
    

end



@school = School.new("test school")
@school.add_student("nathan", 10)
@school.add_student("bob", 10)
@school.add_student("iqra", 9)
puts @school.roster

#Pry.start

