require 'open-uri'
require 'net/http'
require 'json'


class GetRequester
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json."

  def get_response_body
  uri = URI.parse(@url)
  uri.open.string
  response = Net::HTTP.get_response(uri)
  JSON.parse(response.body)
  end


end