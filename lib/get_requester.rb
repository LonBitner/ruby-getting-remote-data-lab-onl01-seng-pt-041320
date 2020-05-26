require 'open-uri'
require 'net/http'
require 'json'


class GetRequester
attr_accessor :url

def initialize(url)
    @url = url
end


def get_response_body
uri = URI.parse(@url)
response = NET::HTTP.get_respones(uri)
JSON.parse(response.body)
end


end