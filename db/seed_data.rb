require_relative('../models/hogwarts_stuff.rb')

Student.delete_all()

student1 = Student.new({
  'first_name'=>'Jenny',
  'last_name'=>'Porpoise',
  'house'=>'ringo',
  'age'=>'12',
})
student1.save()

student2 = Student.new({
  'first_name'=>'Garry',
  'last_name'=>'Blazer',
  'house'=>'cheddar',
  'age'=>'13',
})
student2.save()

student3 = Student.new({
  'first_name'=>'Paula',
  'last_name'=>'Owls',
  'house'=>'ringo',
  'age'=>'11',
})
student3.save()

student4 = Student.new({
  'first_name'=>'Burton',
  'last_name'=>'Grundle',
  'house'=>'herring',
  'age'=>'11',
})
student4.save()

student5 = Student.new({
  'first_name'=>'Sharon',
  'last_name'=>'Butter',
  'house'=>'ramen',
  'age'=>'14',
})
student5.save()
