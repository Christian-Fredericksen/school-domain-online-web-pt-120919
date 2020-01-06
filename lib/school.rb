# code here!
require "pry"
class School
  
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade_level)
    @student = student
    @grade_level = grade_level
    if roster.keys.include?(@grade_level)
      roster[@grade_level] << @student
     
    else
       roster[grade_level] = []
       roster[grade_level] << @student
    end
  end
  
  def grade(grade_level)
    @grade_level = grade_level
    if roster.keys.include?(@grade_level)
     roster[grade_level]
    end
   end
   
   def sort
       @roster[@grade_level][@student].sort
       end
   
end