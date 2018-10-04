require_relative('../models/hogwarts_stuff.rb')

Student.delete_all()
House.delete_all()

house1 = House.new('house'=>'Ramen','logo'=>'https://img.delicious.com.au/hLDsVuY9/h506-w759-cfill/del/2017/07/japanese-spicy-miso-pork-ramen-49051-1.jpg')
house2 = House.new('house'=>'Cheddar','logo'=>'https://www.bbcgoodfood.com/sites/default/files/glossary-item/glossary-image/2016/04/cheddar.jpg')
house3 = House.new('house'=>'Ringo','logo'=>'https://www.udiscovermusic.com/wp-content/uploads/2017/11/Ringo-2015.jpg')
house4 = House.new('house'=>'Herring','logo'=>'https://www.brownetrading.com/wp-content/uploads/sardines1-480x319-1.jpg')

house1.save()
house2.save()
house3.save()
house4.save()


student1 = Student.new({
  'first_name'=>'Jenny',
  'last_name'=>'Porpoise',
  'house'=> house1.id,
  'age'=>'12',
})
student1.save()

student2 = Student.new({
  'first_name'=>'Garry',
  'last_name'=>'Blazer',
  'house'=>house3.id,
  'age'=>'13',
})
student2.save()

student3 = Student.new({
  'first_name'=>'Paula',
  'last_name'=>'Owls',
  'house'=>house2.id,
  'age'=>'11',
})
student3.save()

student4 = Student.new({
  'first_name'=>'Burton',
  'last_name'=>'Grundle',
  'house'=>house4.id,
  'age'=>'11',
})
student4.save()

student5 = Student.new({
  'first_name'=>'Sharon',
  'last_name'=>'Butter',
  'house'=>house1.id,
  'age'=>'14',
})
student5.save()
