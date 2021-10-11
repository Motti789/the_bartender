require 'net/http'
require 'open-uri'
require 'json'

class GetPrograms
    
    URL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"

  def get_programs
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    programs = JSON.parse(self.get_response_text)
  end

 end 

  
  programs = GetPrograms.new.get_programs
  puts programs