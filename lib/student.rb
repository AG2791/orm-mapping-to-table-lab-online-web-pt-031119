class Student

attr_accessor :name, :grade
attr_reader :id

def initialize(name, grade, id=nil)
  @name = name
  @grade = grade
  @id = id

end

def self.create_table
  sql = << sql 
    CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql) 
end

def self.drop_table
  sql = << sql
   sql = "DROP TABLE IF EXISTS students"
    DB[:conn].execute(sql)
end
