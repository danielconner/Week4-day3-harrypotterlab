require_relative('../models/student.rb')
require_relative('../models/house.rb')
require('pry')

Student.delete_all()
House.delete_all()

student1 = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'house' => 'Gryfindor',
  'age' => 18
  })
  student2 = Student.new({
    'first_name' => 'Ron',
    'last_name' => 'Weasley',
    'house' => 'Gryfindor',
    'age' => 21
    })
    student3 = Student.new({
      'first_name' => 'Hermonine',
      'last_name' => 'Grainger',
      'house' => 'Gryfindor',
      'age' => 19
      })

student1.save()
student2.save()
student3.save()

house1 = House.new({
  'name' => 'Gryfindor',
  'logo' => '/gryffindor.jpg'
  })

house2 = House.new({
  'name' => 'Slytherin',
  'logo' => '/slytherin.jpg'
  })

house3 = House.new({
  'name' => 'Hufflepuff',
  'logo' => '/hufflepuff.jpg'
    })

house4 = House.new({
  'name' => 'Ravenclaw',
  'logo' => '/ravenclaw.jpg'
  })

  house1.save()
  house2.save()
  house3.save()
  house4.save()

binding.pry
nil
