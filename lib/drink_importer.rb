require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'

class GetAPi
    
    URL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"

  def self.
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    programs = apJSON.parse( response.body)
  end

 end 

  
  programs = GetPrograms.new.get_programs
  puts programs