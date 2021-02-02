class School 
  
    def initialize(school_name)
        @name = school_name
        @roster = {}

        
    end
    def name 
        @name 
    end 


    def roster 
        @roster
    
    end 

    def add_student(student_name, grade)

        if roster[grade]
            roster[grade] << student_name
        else 
            roster[grade] = []
            roster[grade] << student_name 
        end 
    end 

    def grade(num)
        roster[num]
    end 

    def sort 
        sorted_roster = {}
        roster.each do |grade, student_names|
          sorted_roster[grade] = student_names.sort
        end 
        sorted_roster
    end 
end 




