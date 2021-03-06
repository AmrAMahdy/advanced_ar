# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.destroy_all

Person.create! [
  { first_name: "Amr", age: 21, last_name: "Alaa", login: "n1amr", pass:"12345"},
  { first_name: "Kalman", last_name: "Smith", age: 33, login: "kman", pass: "abc123" },
  { first_name: "John", last_name: "Whatever", age: 27, login: "john1", pass: "123abc" },
  { first_name: "Michael", last_name: "Smith", age: 15, login: "mike", pass: "not_telling" },
  { first_name: "Josh", last_name: "Oreck", age: 57, login: "josh", pass: "password1" },
  { first_name: "John", last_name: "Smith", age: 27, login: "john2", pass: "no_idea" },
  { first_name: "Bill", last_name: "Gates", age: 75, login: "bill", pass: "windows3.1" },
  { first_name: "LeBron", last_name: "James", age: 30, login: "bron", pass: "need more rings" }
]

PersonalInfo.destroy_all

PersonalInfo.create [
  { height: 169, weight: 65, person_id: Person.first.id }
]

Job.destroy_all

Person.first.jobs.create! [
  { title: "Developer", company: "MS", position_id: "#1234" },
  { title: "Developer", company: "MS", position_id: "#1235" }
]

Person.last.jobs.create! [
  { title: "Sr. Developer", company: "MS", position_id: "#5234" },
  { title: "Sr. Developer", company: "MS", position_id: "#5235" }
]

Hobby.destroy_all

Hobby.create! [
  { name: "Programming" },
  { name: "Music" },
  { name: "Reading" }
]

Person.first.hobbies << Hobby.first

SalaryRange.destroy_all

SalaryRange.create [
  { min_salary: 10000.00, max_salary: 20000.00 },
  { min_salary: 8000.00, max_salary: 15000.00 }
]

Person.first.jobs.first.salary_range = SalaryRange.first;
Person.first.jobs.last.salary_range = SalaryRange.last;
