require 'open-uri'
require 'net/http'
require 'json'


class GetRequester


url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json."

def get_response_body
uri = URI.parse(url)
response = Net::HTTP.get_respones(uri)
response.body
end


end