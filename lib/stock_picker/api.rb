require 'net/http'
require 'open-uri'
require 'json'

class GetPrograms

  URL = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=AMZN&interval=5min&outputsize=full&apikey=demo"

  def get_programs
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def program_school
    # we use the JSON library to parse the API response into nicely formatted JSON
      programs = JSON.parse(self.get_programs)
      programs.collect do |program|
        program["agency"]  
      end
    end 

end

programs = GetPrograms.new.get_programs
puts programs

