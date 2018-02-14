require_relative('../models/student.rb')




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
