require 'httparty'
class City
  def initialize
    @job_data = get_data
  end

  def city_name
    @job_data[0]["location"]
  end

  private def get_data
    HTTParty.get("https://jobs.github.com/positions.json?location=94101&full_time=true")
  end
end
