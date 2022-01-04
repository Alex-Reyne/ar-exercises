require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

#---------- STORE 4 ------------
s4 = Store.create(name: 'Surrey', 
  annual_revenue: 224000, 
  mens_apparel: false, 
  womens_apparel: true)

#---------- STORE 5 ------------
s5 = Store.create(name: 'Whistler', 
  annual_revenue: 1900000, 
  mens_apparel: true, 
  womens_apparel: false)

#---------- STORE 6 ------------
s5 = Store.create(name: 'Yaletown', 
  annual_revenue: 430000, 
  mens_apparel: true, 
  womens_apparel: true)

#-------------------------------

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |mens|
  pp mens.name
  pp mens.annual_revenue
end

# replace string with ..1000000 in rails v5+
# @womens_stores = Store.where(womens_apparel: true, annual_revenue: ..1000000)

@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < 1000000')

# ------------ BAD -------------
# @womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)
# @womens_stores = Store.where(womens_apparel: true, annual_revenue: (0..1000000))
# @womens_stores = Store.where('womens_apparel = true AND annual_revenue < 1000000')

@womens_stores.each do |womens|
  pp womens.name
  pp womens.annual_revenue
end
