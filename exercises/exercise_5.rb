require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)

pp 'Total revenue of all stores:'
pp @total_revenue

@store_count = Store.count

pp 'Average Annual Revenue:'
pp @total_revenue / @store_count

@revenue_more_than_1M = Store.where('annual_revenue < 1000000').count
pp '# of stores with more than 1M revenue:'
pp @revenue_more_than_1M
