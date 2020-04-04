class School
    attr_reader :school_name, :roster
    def initialize (school_name)
        @school_name=school_name
        @roster ={}
    end

    def add_student (student_name, student_grade)
        roster[student_grade] ||=[] # if there's more than one student in the same grade, setting it equal to an empty array will erase its current content. it will create a key of 9 and set it equal to an empty array. That's where || comes in to prevent from eraising previous data with same grade key. 
        roster[student_grade] << student_name
    end

    def grade (student_grade)
        roster[student_grade]
    end

    def sort
        sorted ={}
        roster.each do |student_grade, student_name|
            sorted[student_grade] = student_name.sort
    end
    sorted
end
end