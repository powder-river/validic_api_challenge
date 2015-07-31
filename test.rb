require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './cities.rb'
require 'httparty'
# require 'faker'
require 'json'
# require './current_conditions.rb'
# require './sun_up_down.rb'
# require './ten_day_forecast.rb'
# require './alerts.rb'
# require './hurricanes.rb'

class City
  private def get_data
    JSON.parse(File.open("cities.json").read)
  end
end



class ApplicationTest < Minitest::Test


  def test_assert_true
    assert true
  end

  def test_display_job_location
     city = City.new("SF")
     assert_equal "San Francisco", city.city_name
  end

  def test_get_number_of_jobs
    city = City.new("SF")
    assert_equal 50, city.job_num
  end
end
