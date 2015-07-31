require 'httparty'
class City
  attr_reader :city
  def initialize(city)
    @city = city
    @job_data = get_data
  end

  def city_name
    @job_data[0]["location"]
  end

  def job_num
    number_of_jobs = @job_data.map{|x|x["title"]}
    number_of_jobs.count
  end

  private def get_data
    HTTParty.get("https://jobs.github.com/positions.json?location=#{city}&full_time=true")
  end
end
