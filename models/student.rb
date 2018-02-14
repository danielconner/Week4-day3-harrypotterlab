require_relative()

class Student

  attr_reader :first_name, :last_name, :house, :age, :id

  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house']
    @age = options ['age'].to_i
  end

end
