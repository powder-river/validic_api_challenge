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

@sf_jobs = @sf_jobs.reduce(:+)
language_array.each do |x|
  san_francisco = City.new("sf",x)
  total = san_francisco.job_num
  puts "#{((total.to_f/@sf_jobs)*100).round(2)}% of the jobs in San Francisco are #{x.capitalize} jobs. "
end


puts "-" * 60
puts "\n"
#
@boston_jobs = []
language_array.each do |x|
  boston = City.new("boston",x)
  @total_jobs << boston.job_num
  @boston_jobs << boston.job_num
end

@boston_jobs = @boston_jobs.reduce(:+)
language_array.each do |x|
  boston = City.new("boston",x)
  total = boston.job_num
  puts "#{((total.to_f/@boston_jobs)*100).round(2)}% of the jobs in Boston are #{x.capitalize} jobs. "
end


puts "-" * 60
puts "\n"

@la_jobs = []
language_array.each do |x|
  la = City.new("la",x)
  @total_jobs << la.job_num
  @la_jobs << la.job_num
end

@la_jobs = @la_jobs.reduce(:+)
language_array.each do |x|
  la = City.new("la",x)
  total = la.job_num
  puts "#{((total.to_f/@la_jobs)*100).round(2)}% of the jobs in Los Angeles are #{x.capitalize} jobs. "
end

puts "-" * 60
puts "\n"

@boulder_jobs = []
language_array.each do |x|
  boulder = City.new("boulder",x)
  @total_jobs << boulder.job_num
  @boulder_jobs << boulder.job_num
end

@boulder_jobs = @boulder_jobs.reduce(:+)
language_array.each do |x|
  boulder = City.new("boulder",x)
  total = boulder.job_num
  puts "#{((total.to_f/@boulder_jobs)*100).round(2)}% of the jobs in the Denver area are #{x.capitalize} jobs. "
end
puts "-" * 60
puts "\n"



@chicago_jobs = []
language_array.each do |x|
  chicago = City.new("chicago",x)
  @total_jobs << chicago.job_num
  @chicago_jobs << chicago.job_num
end

@chicago_jobs = @chicago_jobs.reduce(:+)
language_array.each do |x|
  chicago = City.new("chicago",x)
  total = chicago.job_num
  puts "#{((total.to_f/@chicago_jobs)*100).round(2)}% of the jobs in Chicago are #{x.capitalize} jobs. "
end


puts "-" * 60
puts "\n"


@ny_jobs = []
language_array.each do |x|
  ny = City.new("ny",x)
  @total_jobs << ny.job_num
  @ny_jobs << ny.job_num
end

@ny_jobs = @ny_jobs.reduce(:+)
language_array.each do |x|
  ny = City.new("ny",x)
  total = ny.job_num
  puts "#{((total.to_f/@ny_jobs)*100).round(2)}% of the jobs in New York are #{x.capitalize} jobs. "
end
puts "-" * 60
puts "\n"
puts "Job Search Complete! #{@total_jobs.reduce(:+)} Jobs Searched"
