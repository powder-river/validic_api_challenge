require 'httparty'
require './cities.rb'

san_francisco = City.new("sf")
puts "San Francisco\n"
puts "there are #{san_francisco.job_num} jobs available in SF"
puts "--Ruby"
puts san_francisco.job_num

# boston = City.new("boston")
# puts "Boston\n"
# puts "there are #{boston.job_num} jobs available in SF"
# puts "--Ruby"
# puts boston.job_num
#
# la = City.new("la")
# puts "Los Angeles\n"
# puts "there are #{la.job_num} jobs available in SF"
# puts "--Ruby"
# puts la.job_num
#
#
# boulder = City.new("boulder")
# puts "Denver and Boulder\n"
# puts "there are #{boulder.job_num} jobs available in SF"
# puts "--Ruby"
# puts boulder.job_num
#
# chicago = City.new("chicago")
# puts "Chicago\n"
# puts "there are #{chicago.job_num} jobs available in SF"
# puts "--Ruby"
# puts chicago.job_num
#
# ny = City.new("ny")
# puts "New York\n"
# puts "there are #{ny.job_num} jobs available in SF"
# puts "--Ruby"
# puts ny.job_num
