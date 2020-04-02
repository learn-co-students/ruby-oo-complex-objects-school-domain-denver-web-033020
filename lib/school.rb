class School
    attr_accessor :schoolName, :roster, :studentName, :grade

    def initialize(name)
        @schoolName = name
        @roster = {}
    end

    def add_student(studentName, grade)
        if !roster[grade]
            roster[grade] = []
        end
        roster[grade] << studentName
    end

    def grade(incomingGrade)
        roster[incomingGrade]
    end

    def sort
        sortedRoster = {} 
        roster.each do |gradeNum, students|
            sortedRoster[gradeNum] = students.sort
        end
        sortedRoster
    end


end