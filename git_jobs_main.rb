require 'httparty'
require './cities.rb'

puts "Searching.....\n"
# think of putting a loop in here. would save some space, code spelly as is
language_array = ["ruby","java", "c", "c++", "python", "javascript"]
@total_jobs = []
@sf_jobs = []
language_array.each do |x|
  san_francisco = City.new("sf",x)
  @total_jobs << san_francisco.job_num
  @sf_jobs << san_francisco.job_num
end
puts @sf_jobs = @sf_jobs.reduce(:+)
language_array.each do |x|
  san_francisco = City.new("sf",x)
  total = san_francisco.job_num
  puts "#{((total.to_f/@sf_jobs)*100).round(2)}% of the jobs in San Francisco are #{x.capitalize} jobs. "

end


# puts "-" * 50
# puts "\n"
#
# language_array.each do |x|
#   boston = City.new("boston",x)
#   puts " There are #{boston.job_num} #{x.capitalize} jobs in Boston "
#
#   @total_jobs << boston.job_num
#
# end
#
#
# puts "-" * 50
# puts "\n"
#
# language_array.each do |x|
#   la = City.new("la",x)
#   puts " There are #{la.job_num} #{x.capitalize} jobs in Los Angeles"
#   @total_jobs << la.job_num
#
# end
#
# puts "-" * 50
# puts "\n"
#
# language_array.each do |x|
#   boulder = City.new("boulder",x)
#   puts " There are #{boulder.job_num} #{x.capitalize} jobs in the Denver/Boulder area. "
#   @total_jobs << boulder.job_num
#
# end
#
# puts "-" * 50
# puts "\n"
#
# language_array.each do |x|
#   chicago = City.new("chicago",x)
#   puts " There are #{chicago.job_num} #{x.capitalize} jobs in Chicago "
#   @total_jobs << chicago.job_num
#
# end
#
# puts "-" * 50
# puts "\n"
#
# language_array.each do |x|
#   ny = City.new("ny",x)
#   puts " There are #{ny.job_num} #{x.capitalize} jobs in New York "
#   @total_jobs << ny.job_num
#
# end


puts "#{@total_jobs.reduce(:+)} Jobs Searched"
