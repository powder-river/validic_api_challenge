require 'httparty'
require './cities.rb'


# think of putting a loop in here. would save some space, code spelly as is
language_array = ["ruby","java", "c", "c++", "python", "javascript"]

language_array.each do |x|
  san_francisco = City.new("sf",x)
  puts " There are #{san_francisco.job_num} #{x.capitalize} jobs in San Francisco "
end

puts "-" * 50
puts "\n"

language_array.each do |x|
  boston = City.new("boston",x)
  puts " There are #{boston.job_num} #{x.capitalize} jobs in Boston "
end

puts "-" * 50
puts "\n"

language_array.each do |x|
  boston = City.new("la",x)
  puts " There are #{la.job_num} #{x.capitalize} jobs in Los Angeles"
end
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
