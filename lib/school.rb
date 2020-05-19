require 'pry'

class School
  attr_reader :name, :roster

  def initialize name
    @name = name
    @roster = {}
  end

  def add_student name, grade
    # if self.roster.has_key?(grade)
    #   self.roster[grade] << name
    # else
    #   self.roster[grade] = [name]
    # end
    self.roster[grade] ||= []
    # if self.roster[grade] already exists, do nothing
    # else set self.roster[grade] = []
    self.roster[grade] << name
  end

  def grade grade
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, students|
      students.sort!
    end
  end
end