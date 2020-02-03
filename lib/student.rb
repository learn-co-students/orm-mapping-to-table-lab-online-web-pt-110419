class Student
  attr_reader :id
  attr_accessor :name, :grade
  
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
  end

def self.create_table(name, grade)
  sql <<-SQL
  CREATE TABLE IF NOT EXISTS students (name, grade)
                    VALUES (?, ?);
    SQL
    
end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
