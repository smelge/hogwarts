require_relative('../db/sql_runner.rb')

class Student
  attr_reader
  attr_accessor

  def initialize(options)
    @id = options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options['age']
  end

  def save()
    sql = "
      INSERT INTO students
      (first_name,last_name,house,age)
      VALUES
      ($1,$2,$3,$4)
    "
    values = [@first_name,@last_name,@house,@age]
    SqlRunner.run(sql,values)
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end
end
