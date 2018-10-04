require_relative('../db/sql_runner.rb')

class Student
  attr_reader :id,:first_name,:last_name,:house,:age

  def initialize(options)
    @id = options['id'].to_i
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

  def find_one()
    sql = "
      SELECT * FROM students WHERE id = $1
    "
    result = SqlRunner.run(sql,[$1])
    return Student.new(result.first)
  end

  def self.find_all()
    sql = "SELECT * FROM students"
    result = SqlRunner.run(sql)
    return result.map { |student| Student.new( student ) }
  end

  def name()
    return "#{@first_name} #{@last_name}"
  end
end

class House
  attr_reader :house,:logo,:id

  def initialize(options)
    @id = options['id'].to_i
    @house = options['house']
    @logo = options['logo']
  end

  def save()
    sql = "
      INSERT INTO houses
      (house,logo)
      VALUES
      ($1,$2)
      RETURNING id
    "
    values = [@house,@logo]
    result = SqlRunner.run(sql,values)
    @id = result[0]['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def self.house(id)
    sql = "
      SELECT house FROM houses WHERE id = $1
    "
    result = SqlRunner.run(sql,[id])
    return result.first['house']
  end
  
  def self.find_one(id)
    sql = "
      SELECT house FROM houses WHERE id = $1
    "
    result = SqlRunner.run(sql,[id])
    return result.first['house']
  end

  def self.find_all()
    sql = "SELECT * FROM houses"
    result = SqlRunner.run(sql)
    return result.map { |house| House.new( house ) }
  end
end
