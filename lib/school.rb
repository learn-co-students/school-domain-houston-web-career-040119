class School
    attr_reader :school_name, :roster


    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end

        @roster[grade] << name 
    end

    def grade(grade)
        @roster[grade] 
    end

    def sort
        results = {}
        @roster.each do |grade,names|
            results[grade] = names.sort 
        end
        results
    end
end
