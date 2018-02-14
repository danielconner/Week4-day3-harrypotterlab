require_relative('../db/sql_runner.rb')

class House

  attr_reader :id, :name, :logo

  def initialize(options)
    @id = options['id'].to_i()
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql = "INSERT INTO houses (name, logo) VALUES ($1, $2) RETURNING id"
    values = [@name, @logo]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i()
  end

  def self.delete_all
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map{|house| House.new(house)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)
    result = House.new(house.first)
    return result
  end
  #
  # def self.name
  #   sql = "SELECT name from houses"
  #  SqlRunner.run(sql)
  #
  # end

end
