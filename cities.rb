require 'httparty'
class City


  def initialize


  end

  private def get_data
  HTTParty.get("https://jobs.github.com/positions.json?location=94101&full_time=true")
  end

end
