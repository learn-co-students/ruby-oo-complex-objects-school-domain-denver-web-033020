class School
attr_accessor :name, :roster
def initialize (name)
    @name = name
    @roster = {}
end

def add_student (student, grade)
    if @roster[grade]  != nil
        @roster[grade] << student
        #if there is already a grade, then we just push the student into the array of students in the roster hash
    else 
        @roster[grade] = [student]
        #if the grade of a sudent doesnt exist then this creates a new hash with anarray, with a single student
end
end
    def grade (grade)
        @roster[grade]
    end
    def sort
        sorted_roster = {}
        @roster.each do |year, student_names|
            sorted_roster[year] = student_names.sort
        end
        sorted_roster
    end
end