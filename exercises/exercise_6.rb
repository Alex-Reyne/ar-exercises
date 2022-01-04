require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.first
@store2 = Store.last

@store1.employees.create(first_name: 'Jamie',
  last_name: 'Li',
  hourly_rate: 40)

@store1.employees.create(first_name: 'Joseph',
  last_name: 'Micla',
  hourly_rate: 60)

@store1.employees.create(first_name: 'Alex',
  last_name: 'Reyne',
  hourly_rate: 80)

@store2.employees.create(first_name: 'Ivan',
  last_name: 'Tang',
  hourly_rate: 40)

@store2.employees.create(first_name: 'Aaron',
  last_name: 'Kim',
  hourly_rate: 60)

@store2.employees.create(first_name: 'Jeff',
  last_name: 'Kim',
  hourly_rate: 80)

pp Employee.where(hourly_rate: (0..1000))