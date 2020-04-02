# code here!
class School
    attr_accessor :name, :roster
    

    def initialize (name)
        @roster = {}
        @name = name
    end


    def add_student(student_name, grade)
        @name = student_name
        @grade = grade

        roster[grade] ||= [] # i don't get why this works#
        roster[grade] << student_name
    end

    def grade(grade)
        roster.select do |level, student_name|
            if grade == level
                return student_name
            end
        end
    end

    def sort
        sorted_roster = {}
        roster.each do |level,student_name|
           sorted_roster[level] = student_name.sort
        end
        sorted_roster
    end

    ##The ||= is called memoization and it’s a way for Ruby to either call the hash roster and call the 
    # key grade OR, if that hasn’t been set yet, sets it’ equal to an empty array. 
    # So if you’ve already added that key, it just keeps adding to it, 
    # I’m guessing, would need to see more of the code where youre actually doing the adding
    


        
end