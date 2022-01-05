require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# class Employee < ApplicationRecord
#   validates :first_name, :last_name, presence: true
#   validates :hourly_rate, comparison: { greater_than: 39 }
#   validates :hourly_rate, comparison: { less_than: 201 }
#   validates :store, presence: true
# end

# class Store < ApplicationRecord
#   validates :name, presence: true, length: { minimum: 3 }
#   validates :annual_revenue, presence: true, only_integer: true, comparison: { greater_than: 0 }
#   validates :hourly_rate, comparison: { less_than: 201 }
#   validates :store, presence: true
# end

puts 'Enter Store Name:'
store_name = gets.chomp

pp Store.create(name: store_name).errors.full_messages
