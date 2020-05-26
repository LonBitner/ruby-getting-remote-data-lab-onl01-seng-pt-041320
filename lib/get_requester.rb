require 'open-uri'
require 'net/http'
require 'json'


class GetRequester
attr_accessor :url

def initialize(url)
    @url = url
end

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json."

def get_response_body
uri = URI.parse(@url)
response = Net::HTTP.get_respones(uri)
response.body
end


end