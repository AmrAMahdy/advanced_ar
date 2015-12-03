# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create! [
  {first_name: "Amr", age: 21, last_name: "Alaa"},
  {first_name: "Alaa", age: 55, last_name: "Mahdy"}
]
