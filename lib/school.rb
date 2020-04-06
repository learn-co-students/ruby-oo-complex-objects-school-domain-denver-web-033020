require 'pry'
class School
    attr_reader :name 
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}

    end
    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else 
            @roster[grade] = [student_name]
        end
    end

    def grade(grade_number)
        roster[grade_number]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade_number, students|
            #binding.pry
            sorted_roster[grade_number] = students.sort
        end
        sorted_roster
    end
end
