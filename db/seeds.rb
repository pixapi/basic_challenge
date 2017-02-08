# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


student1 = Student.create(name: "student 1")
student2 = Student.create(name: "student 2")
student1.addresses.create(name: "1331 17th St.", body: "colorado", city: "denver")
student2.addresses.create(name: "1332 17th St.", body: "colorado", city: "denver")

student1.courses.create(name: "chemistry")
student1.courses.create(name: "biology")
student2.courses.create(name: "biology")
