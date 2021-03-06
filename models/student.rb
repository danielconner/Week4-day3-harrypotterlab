require_relative('../db/sql_runner.rb')

class Student

  attr_reader :first_name, :last_name, :house_id, :age, :id



  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id']
    @age = options ['age'].to_i
  end

  def full_name()
    return "#{@first_name} #{@last_name}"
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house_id, age) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@first_name, @last_name, @house_id, @age]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map{|student| Student.new(student)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run(sql, values)
    result = Student.new(student.first)
    return result
  end

  def self.delete_all()
    sql ="DELETE FROM students"
    SqlRunner.run(sql)
  end

  def house()
    sql="SELECT * from houses WHERE id = $1"
    values= [@house_id]
    # house = SqlRunner.run(sql,values)
    # result = House.new(house)
    # return result
    houses = SqlRunner.run(sql,values)
    return houses.map{|house| House.new(house)}
  end

end
